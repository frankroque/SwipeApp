//
//  ThirdPageViewController.swift
//  SwipePagesApp
//
//  Created by Francisco Roque on 4/5/22.
//

import UIKit

class ThirdPageViewController: UIViewController {

    private let somelabel: UILabel = {
       let label = UILabel()
        label.text = "Page 3".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(somelabel)
        
        autoLayoutConstraints()
    }
    
    func autoLayoutConstraints(){
        somelabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        somelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}
