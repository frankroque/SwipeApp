//
//  SecondPageViewController.swift
//  SwipePagesApp
//
//  Created by Francisco Roque on 4/5/22.
//

import UIKit

class SecondPageViewController: UIViewController {

    
    private let somelabel : UILabel = {
       let label = UILabel()
        label.text = "Page 2"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(somelabel)
        
        autoLayoutConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func autoLayoutConstraints(){
        somelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        somelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
}
