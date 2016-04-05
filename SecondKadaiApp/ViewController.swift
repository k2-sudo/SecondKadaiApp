//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Kazuhiro Sudo on 16/4/4.
//  Copyright © 2016年 k.sudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var label1: UILabel!
    
    @IBOutlet var text1: UITextField!
    
    @IBOutlet var errorlabel: UILabel!
    
    @IBAction func button1(sender: AnyObject) {
    }
    
    // 他の画面から segue を使って戻ってきた時に呼ばれるように指定した関数
    @IBAction func unwind(segue: UIStoryboardSegue) {
        //initialize
        text1.text = ""
        errorlabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        text1.delegate = self
        
    }

    
    // Check the num of characters
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    
    let maxLength: Int = 20
    
    let c: Int
    
    if let text = textField.text {
        let str = text + string
        print("str = " + str)
        c = str.utf16.count
    }
    else {
        
        print("02")
        c = string.utf16.count
    }
        
    // 文字数がmaxLength以下ならtrueを返す.
    if c < maxLength {
        print("ok")
        return true
    }else{
        print("error")
        errorlabel.text = "名前は２０文字以内で入力してください。"
        return false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //segueの遷移時の処理
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){

        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController

        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.uname = (String!)(text1.text)
        
    }

    
    //Check Space
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        if self.text1.text == ""{
            errorlabel.text = "名前を入力してください"
            return false
        }else{
            //print("not nul")
            return true
        }
        
        
    }
    
    



}

