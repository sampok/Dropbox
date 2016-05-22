//
//  CreateAccountViewController.swift
//  Dropbox
//
//  Created by Sampo Karjalainen on 5/19/16.
//  Copyright © 2016 Sampo Karjalainen. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordStrengthImage: UIImageView!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var termsSheetImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedBack(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func tappedCreate(sender: AnyObject) {
        view.endEditing(true)
        termsSheetImageView.hidden = false
        
    }
    
    @IBAction func editedPassword(sender: AnyObject) {
        print(passwordTextField.text!.characters.count)
        switch passwordTextField.text!.characters.count {
        case 1..<3:
            passwordStrengthImage.hidden = false
            createButton.enabled = true
            passwordStrengthImage.image = UIImage(named: "signup_1")
        case 3..<5:
            passwordStrengthImage.hidden = false
            createButton.enabled = true
            passwordStrengthImage.image = UIImage(named: "signup_2")
        case 5..<7:
            passwordStrengthImage.hidden = false
            createButton.enabled = true
            passwordStrengthImage.image = UIImage(named: "signup_3")
        case 7..<100:
            passwordStrengthImage.hidden = false
            createButton.enabled = true
            passwordStrengthImage.image = UIImage(named: "signup_4")
        default:
            passwordStrengthImage.hidden = true
            createButton.enabled = false
        }
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
