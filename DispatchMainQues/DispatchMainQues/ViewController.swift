//
//  ViewController.swift
//  DispatchMainQues
//
//  Created by Chetan Agarwal on 30/04/20.
//  Copyright © 2020 Chetan Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let serialQueue = DispatchQueue(label: "Test")

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func o1(_ sender: Any) { //works Fine
        DispatchQueue.main.async {
            DispatchQueue.main.async {
                self.view.backgroundColor = .red
            }
        }
    }

    @IBAction func o2(_ sender: Any) {
        DispatchQueue.main.async {
            // Crash -- Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
            DispatchQueue.main.sync {
                self.view.backgroundColor = .blue
            }
        }
    }
    
    @IBAction func o3(_ sender: Any) {
        // Crash -- Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
        DispatchQueue.main.sync {
            DispatchQueue.main.async {
                self.view.backgroundColor = .green
            }
        }
    }

    @IBAction func o4(_ sender: Any) {
        // Crash -- Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
        DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                self.view.backgroundColor = .yellow
            }
        }
    }
    
    @IBAction func s1(_ sender: Any) { //works Fine
        serialQueue.async {
            self.serialQueue.async {
                DispatchQueue.main.async {
                    self.view.backgroundColor = .red
                }
            }
        }
    }

    @IBAction func s2(_ sender: Any) {
        serialQueue.async {
            // Crash -- Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
            self.serialQueue.sync {
                DispatchQueue.main.async {
                    self.view.backgroundColor = .blue
                }
            }
        }
    }
    
    @IBAction func s3(_ sender: Any) {
        // works fine
        serialQueue.sync {
            serialQueue.async {
                DispatchQueue.main.async {
                    self.view.backgroundColor = .green
                }
            }
        }
    }

    @IBAction func s4(_ sender: Any) {
        serialQueue.sync {
            // Crash -- Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
            serialQueue.sync {
                DispatchQueue.main.async {
                    self.view.backgroundColor = .yellow
                }
            }
        }
    }
}

