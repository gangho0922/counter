//
//  ViewController.swift
//  counter
//
//  Created by GSM05 on 2022/07/07.
//

import UIKit

class ViewController: UIViewController {



        @IBOutlet weak var plusButton: UIButton!
        @IBOutlet weak var minusButton: UIButton!
        @IBOutlet weak var resetButton: UIButton!
        @IBOutlet weak var label: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
            label.textAlignment = .center
            // Do any additional setup after loading the view.
        }
    func k(){
        if number < random {
            label.textColor = UIColor.red
        }else if number == random{
            label.textColor = UIColor.green
        }else{
            label.textColor = UIColor.blue
        }
        self.label.text = "\(number)"
    }

        var number: Int = 0
        var random = arc4random_uniform(15) + 1
        @IBAction func plusButton(_ sender: Any) {
            number += 1
            k()
        }
        @IBAction func minusButton(_ sender: Any) {
            number -= 1
            k()
        }
        @IBAction func resetButton(_ sender: Any){
            number=0
            label.textAlignment = .center
            label.textColor = UIColor.blue
            self.label.text = "\(number)"
            random = (arc4random_uniform(15) + 1)
        }
}

