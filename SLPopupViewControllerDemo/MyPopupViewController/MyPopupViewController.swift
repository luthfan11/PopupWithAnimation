//
//  MyPopupViewController.swift
//  SLPopupViewControllerDemo
//
//  Created by Nguyen Duc Hoang on 9/13/15.
//  Copyright © 2015 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

protocol MyPopupViewControllerDelegate {
    func pressOK(_ sender: MyPopupViewController)
    func pressCancel(_ sender: MyPopupViewController)
}
class MyPopupViewController: UIViewController, UITextFieldDelegate {
    var delegate:MyPopupViewControllerDelegate?
    
    @IBOutlet weak var textSize: UITextField!
    
    @IBAction func btnOK(_ sender:UIButton) {
        self.delegate?.pressOK(self)
    }
    
    @IBAction func btnCancel(_ sender:UIButton) {
        self.delegate?.pressCancel(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.cornerRadius = 22
        self.view.layer.masksToBounds = true
        // Do any additional setup after loading the view.
        self.textSize.delegate = self
    }
    
    func textFieldShouldReturn(_ userText: UITextField) -> Bool {
        userText.resignFirstResponder()
        return true;
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
