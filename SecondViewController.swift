//
//  SecondViewController.swift
//  notificationCenterHomework
//
//  Created by Melis Akdoğan on 1.06.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //addObserver metodu ile gelen notification'a dinleyici ekliyoruz.Tetiklenecek olan fonksiyonu select parametresi ile belirtiyoruz
        NotificationCenter.default.addObserver(self, selector: #selector(isNotificationReceived), name: Notification.Name("colorChange"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(isSecondNotificationReceived), name: Notification.Name("titleColor"), object: nil)
    }
    
    //Notification iletildiğinde tetiklenen fonksiyonların declarationları
    @objc func isNotificationReceived(){
        
        view.backgroundColor = .black
        
    }
    
    @objc func isSecondNotificationReceived(){
        label.textColor = .yellow
    }
   
}
