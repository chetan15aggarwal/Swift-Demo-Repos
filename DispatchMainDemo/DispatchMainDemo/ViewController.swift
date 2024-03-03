//
//  ViewController.swift
//  DispatchMainDemo
//
//  Created by Chetan Agarwal on 30/04/20.
//  Copyright © 2020 Chetan Agarwal. All rights reserved.
//

import UIKit
import CoreFoundation

struct Organisation{
    let name: String
    let distance: Double
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //        let organisations = [
        //            Organisation(name: "PhonePe", distance: 0.7),
        //            Organisation(name: "flipkart", distance: 1.3),
        //            Organisation(name: "myntra", distance: 4.2),
        //            Organisation(name: "walmart", distance: 1.6),
        //            Organisation(name: "ekart", distance: 6.12),
        //            Organisation(name: "jbong", distance: 7.56),
        //        ]
        //
        //        let result1 = organisations.map{$0.name}
        //        let result2 = organisations.reduce(0) {$0 + $1.distance}
        //
        //
        //        print("result1 : \(result1)")
        //        print("result2 : \(result2)")
        //
        let lPaymentViewController = PaymentViewController()
        lPaymentViewController.onPayBtn()
        
        
        //        let lPersonUpdateClass = PersonUpdateClass().update()
    }
    
    @IBAction func option1(_ sender: Any) {
        DispatchQueue.global(qos: .background).async {
            DispatchQueue.main.async {
                print("A")
                
                DispatchQueue.global(qos: .default).async {
                    print("C")
                }
                
                DispatchQueue.global().sync {
                    print("B")
                }
                print("D")
            }
        }
    }
    
    @IBAction func option2(_ sender: Any) {
        DispatchQueue.global(qos: .background).async {
            DispatchQueue.main.async {
                //Crash: Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
                DispatchQueue.main.sync {
                    self.view.backgroundColor = .systemPink
                }
            }
        }
    }
    
    @IBAction func option3(_ sender: Any) {
        DispatchQueue.global(qos: .background).async {
            //Crash: Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
            DispatchQueue.main.sync {
                DispatchQueue.main.async {
                    self.view.backgroundColor = .green
                }
            }
        }
    }
    
    @IBAction func option4(_ sender: Any) {
        DispatchQueue.global(qos: .background).async {
            //Crash: Thread 1: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0)
            DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    self.view.backgroundColor = .yellow
                }
            }
        }
    }
}


class PaymentModel{
    private var amount: Int64 = 0{
        didSet{
            print(self.amount)
        }
    }
    
    init(amount:Int64) {
        self.amount = amount
    }
}

class PaymentController{
    func pay(amount:Int64){
        let paymentModel = PaymentModel(amount: amount)
    }
}

class PaymentViewController:UIViewController{
    func onPayBtn(){
        PaymentController().pay(amount: 200)
    }
}

//---------------------------------//---------------------------------//---------------------------------


struct Person: CustomStringConvertible{
    fileprivate var name : String = ""
    fileprivate var age: Int = 0
    
    var description: String{
        return "My name is \(name) and my age is \(age). TQ"
    }
}

protocol PersonUpdater: class {
    var data : Person {get set}
    
    func update()
}

extension PersonUpdater{
    func update(){
        data.name    = "Chetan"
        data.age = 30
    }
}

class PersonUpdateClass{
    private var _data: Person = Person()
}

extension PersonUpdateClass:PersonUpdater{
    
    var data: Person{
        get{
            return _data
        }
        set{
            print(newValue.description)
            _data = newValue
        }
    }
}
