//
//  InputToDo.swift
//  PT_ToDoList
//
//  Created by DoT on 2014. 11. 30..
//  Copyright (c) 2014년 DoT. All rights reserved.
//

import UIKit

class InputToDo: UIViewController {
    
    var buttonOK : UIButton!
    var theToDO : NSMutableArray = []
    var textField : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        buttonOK = UIButton.buttonWithType(UIButtonType.System) as UIButton
        buttonOK.frame = CGRectMake(0.0, 0.0, 40.0, 30.0)
        buttonOK.setTitle("확인", forState: UIControlState.Normal)
        buttonOK.addTarget(self, action: "ADDOK:", forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: buttonOK)
        
        textField = UITextField(frame: CGRectMake(0.0, 200.0, 200.0, 30.0))
        textField.keyboardType = UIKeyboardType.Twitter
        textField.placeholder = "할일입력"
        self.view.addSubview(textField)
        // Do any additional setup after loading the view.
    }
    
    func ADDOK(sender : UIButton){
        theToDO.addObject(textField.text)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func setVariable(aTitle : NSMutableArray){
        theToDO = aTitle
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
