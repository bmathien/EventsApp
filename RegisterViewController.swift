//
//  RegisterViewController.swift
//  EventsApp
//
//  Created by teacher on 4/6/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onRegisterButtonTapped(sender: UIButton)
    {
        if userNameTextField.text == "" || passwordTextField.text == ""
        {
            showAlert("Please enter username & password", nil, self)
        }
        else
        {
            User.registerNewUser(userNameTextField.text, password: passwordTextField.text, completed: { (result, error) -> Void in
                if error != nil
                {
                    showAlertWithError(error, self)
                }
                else
                {
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
            })
        }
    }



}
