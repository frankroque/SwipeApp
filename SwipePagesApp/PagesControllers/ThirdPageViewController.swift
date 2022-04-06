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
        label.text = "Page 3"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(somelabel)
        
        autoLayoutConstraints()
    }
    
    func autoLayoutConstraints(){
        somelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        somelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }

}
