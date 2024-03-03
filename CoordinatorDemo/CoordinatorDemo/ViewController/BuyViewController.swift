//
//  BuyViewController.swift
//  CoordinatorDemo
//
//  Created by Chetan Agarwal on 05/03/21.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" viewDidLoad BuyViewController")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(" viewWillAppear BuyViewController")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print(" viewDidAppear BuyViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(" viewWillDisappear BuyViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(" viewDidDisappear BuyViewController")
    }
}
