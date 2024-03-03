//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Chetan Agarwal on 05/03/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator{
    var childControllers = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func buySub(){
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        //TODO- check if we need to update the child coordinator here or not
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount(){
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
