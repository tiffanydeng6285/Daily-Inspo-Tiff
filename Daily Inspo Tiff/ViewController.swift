//
//  ViewController.swift
//  Daily Inspo Tiff
//
//  Created by Girls Who Code on 7/17/19.
//  Copyright © 2019 Girls Who Code. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

   
    @IBAction func notificationButton(_ sender: Any)
    {
    //notification content//
    let content = UNMutableNotificationContent()
    content.title = "Check Daily Message"
    content.body = "add message"
    content.badge = 1
    
        
        
       //before content?| center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in//
        
        
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in})
    }




}
