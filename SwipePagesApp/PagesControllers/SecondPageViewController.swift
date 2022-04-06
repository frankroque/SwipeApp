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
        label.text = "Page 2".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(somelabel)
        
        autoLayoutConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func autoLayoutConstraints(){
        somelabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        somelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
