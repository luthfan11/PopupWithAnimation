//
//  ViewController.swift
//  SLPopupViewControllerDemo
//
//  Created by Nguyen Duc Hoang on 9/13/15.
//  Copyright © 2015 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyPopupViewControllerDelegate {
    @IBAction func btnBottomTop(_ sender:UIButton) {
       self.displayViewController(.bottomTop)
    }
    @IBAction func btnTopBottom(_ sender:UIButton) {
       self.displayViewController(.topBottom)
    }
    @IBAction func btnBottomBottom(_ sender:UIButton) {
       self.displayViewController(.bottomBottom)
    }
    @IBAction func btnTopTop(_ sender:UIButton) {
        self.displayViewController(.topTop)
    }
    @IBAction func btnLeftLeft(_ sender:UIButton) {
        self.displayViewController(.leftLeft)
    }
    @IBAction func btnLeftRight(_ sender:UIButton) {
        self.displayViewController(.leftRight)
    }
    @IBAction func btnRightLeft(_ sender:UIButton) {
        self.displayViewController(.rightLeft)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func displayViewController(_ animationType: SLpopupViewAnimationType) {
        let myPopupViewController:MyPopupViewController = MyPopupViewController(nibName:"MyPopupViewController", bundle: nil)
        myPopupViewController.delegate = self
        self.presentpopupViewController(myPopupViewController, animationType: animationType, completion: { () -> Void in
            
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: MyPopupViewControllerProtocol
    func pressOK(_ sender: MyPopupViewController) {
        print("press OK", terminator: "\n")
        self.dismissPopupViewController(.fade)
    }
    func pressCancel(_ sender: MyPopupViewController) {
        print("press Cancel", terminator: "\n")
        self.dismissPopupViewController(.fade)
    }

}

