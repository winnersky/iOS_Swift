//
//  ToDoList.swift
//  PT_ToDoList
//
//  Created by DoT on 2014. 11. 30..
//  Copyright (c) 2014년 DoT. All rights reserved.
//

import UIKit

class ToDoList: UITableViewController {
    
    var buttonAdd : UIButton!
    var theToDo : NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()

        buttonAdd = UIButton.buttonWithType(UIButtonType.ContactAdd) as UIButton
        buttonAdd.frame = CGRectMake(0.0, 0.0, 40.0, 30.0)
        buttonAdd.addTarget(self, action: "ADDTODO:", forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: buttonAdd)
        
            }
    
    
    //- (void)AddTODO : (id) sender
    
    func ADDTODO(sender : UIButton){
        let tmpIT = InputToDo()
        tmpIT.setVariable(theToDo)
        self.navigationController?.pushViewController(tmpIT, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    // (NSInteger)
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return theToDo.count
        }
        
        return 0
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdenfitier : NSString = "CELL"
        var cell : UITableViewCell! = tableView.dequeueReusableCellWithIdentifier(cellIdenfitier) as UITableViewCell!
        
       if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdenfitier)
        }
        
        cell.textLabel.text = theToDo.objectAtIndex(indexPath.row) as NSString
        
    // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var cell : UITableViewCell! = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!
        var alert = UIAlertController(title: "체크?", message: "하셨어요?", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {
            alertAction in
            cell.accessoryType  = UITableViewCellAccessoryType.Checkmark
        
        }))
        alert.addAction(UIAlertAction(title: "NO", style: UIAlertActionStyle.Cancel, handler: {
            alertAction in
            cell.accessoryType  = UITableViewCellAccessoryType.None
            
            
        }))
       self.presentViewController(alert, animated: true, completion: nil)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    




}
