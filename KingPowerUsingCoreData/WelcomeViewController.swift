//
//  WelcomeViewController.swift
//  KingPowerUsingCoreData
//
//  Created by Patis Piriyahaphan on 9/4/2558 BE.
//  Copyright © 2558 IBM. All rights reserved.
//

import UIKit
import APAvatarImageView
import DynamicColor

class WelcomeViewController: UIViewController {

    @IBOutlet weak var imgCustomer : APAvatarImageView!
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var lblCardLevel: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    
    var constat = Constants()
    var lol = Locale()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.decorate()

    }

    func decorate() {
        self.imgCustomer.borderWidth = 5.0
        self.imgCustomer.borderColor = UIColor(hex: 0x425F9C)
        self.imgCustomer.image = UIImage(named: "IMG_8040.PNG")
        self.lblCustomerName.text = "Duangkamol Chewchan"
        self.lblCardLevel.text = "Platinum"
        self.btnStart.setTitle(self.constat.customLocalizedString("welcomeStart", comment: "this is comment")as String, forState: .Normal)
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
