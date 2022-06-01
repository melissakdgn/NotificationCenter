//
//  ThirdViewController.swift
//  notificationCenterHomework
//
//  Created by Melis Akdoğan on 1.06.2022.
//

import UIKit

class econdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        NotificationCenter.default.addObserver(self, selector: #selector(isNotificationReceived), name: Notification.Name("colorChanged"), object: nil)
        
    }
    
    @objc func isNotificationReceived(){
        
        view.backgroundColor = .black
        
    }

    

}
