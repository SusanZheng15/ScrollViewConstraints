//
//  ViewController.swift
//  ScrollView
//
//  Created by Susan Zheng on 5/1/18.
//  Copyright © 2018 Susan Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var scrollView = UIScrollView()
    
    private var redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        return redView
    }()
    
    private var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Scroll test"
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    private func setupLayout(){
        view.addSubview(scrollView)
        scrollView.addSubview(titleLabel)
        scrollView.addSubview(redView)
        scrollView.addSubview(blueView)
        scrollView.addSubview(yellowView)
        
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 100)
        scrollView.isScrollEnabled = true
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        
        
        titleLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40).isActive = true
        
    
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        redView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 0).isActive = true
        blueView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    
    }

}

