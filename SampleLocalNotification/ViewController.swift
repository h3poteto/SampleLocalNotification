//
//  ViewController.swift
//  SampleLocalNotification
//
//  Created by akirafukushima on 2015/02/23.
//  Copyright (c) 2015年 h3poteto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var setLocalNotificationButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setLocalNotificationButton.addTarget(self, action: "setLocalNotification", forControlEvents: UIControlEvents.TouchDown)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setLocalNotification() {
        UIApplication.sharedApplication().cancelAllLocalNotifications()
        var localNotification = UILocalNotification()
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 60)
        localNotification.alertBody = "localNotification"
        localNotification.timeZone = NSTimeZone(forSecondsFromGMT: 9 * 60 * 60)
        localNotification.soundName = UILocalNotificationDefaultSoundName
        localNotification.alertAction = "OPEN"
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    }

}

