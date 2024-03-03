//
//  ViewController.swift
//  DispatchQueuesConcept
//
//  Created by Chetan Agarwal on 12/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let sq1 = DispatchQueue(label: "sq1")
        let sq2 = DispatchQueue(label: "sq2")

        sq1.async { //block 1
            print("1")
            
            sq2.sync {//block 2
                print("2")
                
                sq1.async { //block 3
                    print("4")
                }
                
                sq2.sync { //block 4
                    print("5")
                }
            }
            print("3")
        }
        print("0")
    }
}

// block 3 crash
// block 4 crash is the calle queue is sq1.async
