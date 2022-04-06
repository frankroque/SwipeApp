//
//  ViewController.swift
//  SwipePagesApp
//
//  Created by Francisco Roque on 4/5/22.
//

import UIKit

class FirstPageViewController: UIViewController{

    
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "Page 1".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(label1)
        
        autoLayoutConstraints()
    }
    
    //this function disposes of any resources that can be recreated
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func autoLayoutConstraints(){
        label1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

}

