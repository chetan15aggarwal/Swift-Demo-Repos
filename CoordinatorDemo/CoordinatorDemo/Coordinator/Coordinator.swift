//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Chetan Agarwal on 05/03/21.
//

import Foundation
import UIKit

protocol Coordinator{
    var childControllers: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
