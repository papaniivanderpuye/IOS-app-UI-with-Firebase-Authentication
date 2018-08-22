//
//  HomePage.swift
//  Vini
//
//  Created by Loaner on 6/23/17.
//  Copyright © 2017 papanii. All rights reserved.
//

import UIKit

class HomePage: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let tableList = ["Achievements","Preferences","Memories","Social","Game Plan","Purchases","Nearby"]
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (tableList.count)
        
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = tableList[indexPath.row]
        
        return cell
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
