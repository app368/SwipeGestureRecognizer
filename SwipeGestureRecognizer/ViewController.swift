//
//  ViewController.swift
//  SwipeGestureRecognizer
//



import UIKit

class ViewController: UIViewController {    
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mySwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeHandler))
        mySwipe.direction = .left
        view.addGestureRecognizer(mySwipe)
        
    }
    
    @IBAction func swipeHandler(_ gestureRecignizer: UISwipeGestureRecognizer) {
        
        if gestureRecignizer.state == .ended {
            //print("Swipe")
            myLabel.text = "It was a swipe from right to left"
        }
    }
    
}
