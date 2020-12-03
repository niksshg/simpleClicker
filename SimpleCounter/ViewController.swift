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
    
    // executes once when initial root object is set
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // label
        let label = UILabel()
        // set label without storyboard, via frame property. This won't be visible immediately, still need to add it to view hierarchy
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        // adding label as subview to view
        view.addSubview(label)
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60) // set frame
        button.setTitle("Click", for: .normal) //set title
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
    }


}

