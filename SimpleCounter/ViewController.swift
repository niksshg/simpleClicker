//
//  ViewController.swift
//  SimpleCounter
//
//
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    // ! - implicitly unwrapped optional, so it is nil at compile time as it has not been init
    var label: UILabel!
    var secondLabel: UILabel!
    var button: UIButton!
    
    // executes once when initial root object is set
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // label
        let label = UILabel()
        // set label without storyboard, via frame property. This won't be visible immediately, still need to add it to view hierarchy
        label.frame = CGRect(x: 170, y: 150, width: 60, height: 60)
        label.text = "0"
        // adding label as subview to view
        view.addSubview(label)
        // link reference and property
        self.label = label
        
        secondLabel = UILabel()
        secondLabel.frame = CGRect(x: 170, y: 120, width: 60, height: 60)
        secondLabel.text = "0"
        view.addSubview(secondLabel)
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 135, y: 250, width: 100, height: 60) // set frame
        button.setTitle("Click", for: .normal) //set title
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        self.button = button
      
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 100, y: 200, width: 200, height: 60)
        decrementButton.setTitle("Click to decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton)
        
        
        // add target action to button
        // can be referred as Callback method, so button call back when event occurs
        button.addTarget(self, action: #selector(incrementCount), for: UIControl.Event.touchUpInside)
        decrementButton.addTarget(self, action: #selector(decrementCount), for: UIControl.Event.touchUpInside)
    }
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        
        // change background after click
        let colours = [UIColor.red,UIColor.green,UIColor.gray, UIColor.white]
        let randomNumber = Int.random(in: 0 ... 2)
        button.backgroundColor = colours[randomNumber]
    }
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        
    }
    

}


