//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by Kazuhiro Sudo on 16/4/5.
//  Copyright © 2016年 k.sudo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // 受け取るためのプロパティ（変数）を宣言しておく
    var uname:String = ""
    
    @IBOutlet var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultlabel.text = "こんにちは、" + uname + "さん"

        // Do any additional setup after loading the view.
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
