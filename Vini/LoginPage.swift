//
//  LoginPage.swift
//  Vini
//
//  Created by Loaner on 6/22/17.
//  Copyright © 2017 papanii. All rights reserved.
//

import UIKit
import Firebase

class LoginPage: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Login(_ sender: UIButton) {
        
        if let username = usernameTextField.text, let pass = passwordTextField.text
        {
            Auth.auth().signIn(withEmail: username, password: pass)
            {
                (user, error) in
                // ...
                
                if user != nil {
                    print("logged in")
                    
                    self.performSegue(withIdentifier: "goToHome", sender:self )
                    
                }
                else{
                    
                    print("login error")
                    
                }
            }
            
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
