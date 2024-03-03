//
//  CreateAccountViewController.swift
//  CoordinatorDemo
//
//  Created by Chetan Agarwal on 05/03/21.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" viewDidLoad CreateAccountViewController")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(" viewWillAppear CreateAccountViewController")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print(" viewDidAppear CreateAccountViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(" viewWillDisappear CreateAccountViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(" viewDidDisappear CreateAccountViewController")
    }
}
