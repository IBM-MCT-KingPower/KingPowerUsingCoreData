//
//  LoginViewController.swift
//  KingPowerUsingCoreData
//
//  Created by Patis Piriyahaphan on 9/2/2558 BE.
//  Copyright © 2558 IBM. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var imgPromo: UIImageView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var txtUserId: UITextField!
    @IBOutlet weak var txtEmployeeId: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    var constat = Constants()
    var lol = Locale()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.decorate()
        // Do any additional setup after loading the view.

        
    }
    //DIP:: Do view recorating form here
    func decorate() {
        imgPromo.image = UIImage(named: "Promo 2.jpg")
        self.lblCompanyName.text = self.constat.customLocalizedString("loginCompanyName", comment: "this is comment")as String
       self.lblCompanyName.text = ""
        self.txtUserId.placeholder = self.constat.customLocalizedString("loginUserId", comment: "this is comment")as String
        self.txtEmployeeId.placeholder = self.constat.customLocalizedString("loginEmployeeId", comment: "this is comment")as String
        self.btnLogin.setTitle(self.constat.customLocalizedString("loginLogin", comment: "this is comment")as String, forState: .Normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnLogintapped(sender: AnyObject) {
        let username = self.txtUserId!.text
        let password = self.txtEmployeeId!.text
        
        //LoginController().login(username!, password: password!, uiView: self)
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "loginSegue"{
            /*
            let item = sender as! NSDictionary
            let id: Int = item["PRO_ID"] as! Int
            let fname: String = item["PRO_FNAME"] as! String
            let lname: String = item["PRO_LNAME"] as! String
            let workunit: String = item["PRO_WORKUNIT"] as! String
            
            print("ID:         \(id)")
            print("FIRST NAME: \(fname)")
            print("LAST NAME:  \(lname)")
            print("WORK UNIT:  \(workunit)")

            let navMainPageVC = segue.destinationViewController as! UINavigationController
            let mainPageVC = navMainPageVC.topViewController as! MainPageViewController
            mainPageVC.vTechnicianName = "\(fname) \(lname)/\(workunit)"
            mainPageVC.vWorkUnit = workunit
            */
        }
    }

}
