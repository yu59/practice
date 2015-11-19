//
//  ViewController.swift
//  practice
//
//  Created by 桃原　優 on 2015/11/19.
//  Copyright © 2015年 桃原　優. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let w = UIScreen.mainScreen().bounds.size.width
        let mac = UILabel(frame: CGRectMake(10,150,w - 20,100))
        mac.font = UIFont.systemFontOfSize(50)
        mac.textColor = UIColor.blackColor()
        mac.textAlignment = .Center
        mac.text = "Mac Snap"
        view.addSubview(mac)
        
        let des = UILabel(frame: CGRectMake(10,200,w - 20,100))
        des.font = UIFont.systemFontOfSize(30)
        des.textColor = UIColor.blackColor()
        des.textAlignment = .Center
        des.text = "by destro"
        view.addSubview(des)
        
        
        self.view.backgroundColor = UIColor.whiteColor();
        let STARTButton:UIButton = UIButton(frame:CGRectMake(0,0,120,50))
        STARTButton.backgroundColor = UIColor.blackColor();
        STARTButton.layer.masksToBounds = true
        STARTButton.setTitle("START", forState: .Normal)
        STARTButton.layer.cornerRadius = 20.0
        STARTButton.layer.position = CGPoint(x:self.view.bounds.width/2,y:self.view.bounds.height/2 + 100)
        STARTButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(STARTButton);
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    internal func onClickMyButton(sender: UIButton){
        let mySecondViewController: UIViewController = SecondViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

