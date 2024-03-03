//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by Chetan Agarwal on 05/03/21.
//

import UIKit

class ViewController: UIViewController, Storyboarded{

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" viewDidLoad ViewController")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(" viewWillAppear ViewController")
    }
    
    @IBAction func buyBtnTapped(_ sender: Any) {
        coordinator?.buySub()
    }
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(" viewDidAppear ViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(" viewWillDisappear ViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(" viewDidDisappear ViewController")
    }
}

