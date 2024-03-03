//
//  Storyboard.swift
//  CoordinatorDemo
//
//  Created by Chetan Agarwal on 05/03/21.
//

import Foundation
import UIKit

protocol Storyboarded{
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController{
    static func instantiate() -> Self{
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
