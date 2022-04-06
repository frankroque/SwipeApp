//
//  PageViewController.swift
//  SwipePagesApp
//
//  Created by Francisco Roque on 4/5/22.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    var pages = [UIViewController]()
    
    private let pageControl: UIPageControl = {
        let somePages = UIPageControl()
        somePages.frame = CGRect()
        somePages.currentPageIndicatorTintColor = .black
        somePages.translatesAutoresizingMaskIntoConstraints = false
        return somePages
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pageControl)
        self.dataSource = self
        self.delegate = self
        let initialPage = 0
        
        let page1 = FirstPageViewController()
        let page2 = SecondPageViewController()
        let page3 = ThirdPageViewController()
        
        //add individual viewControllers to the pageviewcontroller
        self.pages.append(page1)
        self.pages.append(page2)
        self.pages.append(page3)
        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
        
        //page control
        pageControl.currentPage = initialPage
        
        autoLayoutConstraints()
    }
    
    func autoLayoutConstraints(){
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5).isActive = true
        pageControl.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    //defines what happens when the user swipes to go back in the sequence of pages. If the initial page is current, wrap around and go to the last page, else show the previous page
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = self.pages.firstIndex(of: viewController){
            if viewControllerIndex == 0{
                return self.pages.last
            }else{
                return self.pages[viewControllerIndex - 1]
            }
        }
        return nil
    }
    
    //
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = self.pages.lastIndex(of: viewController){
            if viewControllerIndex < self.pages.count - 1 {
                return self.pages[viewControllerIndex + 1]
            }else{
                return self.pages.first
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        //set pageControl.currentPage to the index of the current viewController in pages
        if let viewControllers = pageViewController.viewControllers{
            if let viewConrollerIndex = self.pages.firstIndex(of: viewControllers[0]){
                self.pageControl.currentPage = viewConrollerIndex
            }
        }
    }

}
