//
//  ManualRegisterPage.swift
//  Vini
//
//  Created by Loaner on 6/22/17.
//  Copyright © 2017 papanii. All rights reserved.
//

import UIKit
import Firebase

class ManualRegisterPage: UIViewController {

    //@IBOutlet weak var usernameTextField: UITextField!
    
    //@IBOutlet weak var passwordTextField: UITextField!
   
    
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
    
   
    @IBAction func register(_ sender: Any) {
        
        if let username = usernameTextField.text, let pass = passwordTextField.text        {
            Auth.auth().createUser(withEmail: username, password: pass)
            {
                (user, error) in
                // ...
                
                if user != nil {
                    
                    print("registered")
                    
                    self.performSegue(withIdentifier: "goToHome", sender:self )
                    
                    
                }
                else{
                    
                    print("notregistered")
                    
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
