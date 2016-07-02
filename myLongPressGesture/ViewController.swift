//
//  ViewController.swift
//  myLongPressGesture
//
//  Created by wealthyjalloh on 02/07/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: "longPressGesture:")
        longPressGesture.minimumPressDuration = 2.0
        myImageView.addGestureRecognizer(longPressGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func longPressGesture(gesture:UIGestureRecognizer) {
        if(gesture.state == .Began) {
            let alertController = UIAlertController(title: "Know thyself", message: "Master Sun said", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: {(action) in })
            alertController.addAction(okAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }


}

