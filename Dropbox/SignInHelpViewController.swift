//
//  SignInHelpViewController.swift
//  Dropbox
//
//  Created by Sampo Karjalainen on 5/22/16.
//  Copyright © 2016 Sampo Karjalainen. All rights reserved.
//

import UIKit

class SignInHelpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func TappedCancel(sender: AnyObject) {
        dismissViewControllerAnimated(false, completion: nil)
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
