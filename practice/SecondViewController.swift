//
//  SecondViewControllew.swift
//  practice
//
//  Created by 桃原　優 on 2015/11/19.
//  Copyright © 2015年 桃原　優. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        let w = UIScreen.mainScreen().bounds.size.width
        let h = UIScreen.mainScreen().bounds.size.height
        let i = UIImageView(frame: CGRectMake(15,50,w - 30,300))
        i.image = UIImage(named:"DSC_0222.JPG")
        view.addSubview(i)
        
        let j = UIButton(frame: CGRectMake(w/2 - 50,20,100,30))
        j.setTitle("punch",forState: UIControlState.Normal)
        j.backgroundColor = UIColor.redColor()
        j.layer.cornerRadius = CGRectGetWidth(j.bounds)/10.0
        j.addTarget(self, action: "draw", forControlEvents: .TouchUpInside)
        view.addSubview(j)
    
        
        
        let BACKButton: UIButton = UIButton(frame:CGRectMake(w / 2 - 50, h / 2,120,50))
        BACKButton.backgroundColor = UIColor.blueColor();
        BACKButton.layer.masksToBounds = true
        BACKButton.setTitle("BACK", forState: .Normal)
        BACKButton.layer.cornerRadius = 20.0
        BACKButton.layer.position = CGPoint(x:self.view.bounds.width/2,y:self.view.bounds.height/2 + 100)
        BACKButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(BACKButton);
        
    }
    
    internal func onClickMyButton(sender:UIButton){
        
        let myViewController: UIViewController = ViewController()
        myViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
    
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }

    func draw(){
        let w = UIScreen.mainScreen().bounds.size.width
        let j = UIImageView(frame: CGRectMake(15,50,w - 30,300))
        j.image = UIImage(named:"DSC_0225.JPG")
        view.addSubview(j)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
