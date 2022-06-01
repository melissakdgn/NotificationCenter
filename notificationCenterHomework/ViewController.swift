//
//  ViewController.swift
//  notificationCenterHomework
//
//  Created by Melis Akdoğan on 1.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    //ViewController ve SecondViewController background rengini değiştirmek üzere notification gönderen fonksiyon
    @IBAction func buttonFunction(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("colorChange"),object: nil)
        view.backgroundColor = .yellow
    } //Gönderdiğimiz notification'a bir isim atıyoruz. Bu view içerisinde gerçekleşecek actionları parantez içerisinde belirtiyoruz. Ayrıca obje gönderilmediği için nil olarak tanımlanıyor 
    
    // SecondViewController label text rengini değiştirmek üzere notification gönderen fonksiyon
    @IBAction func titleFunction(_ sender: Any) {
        NotificationCenter.default.post(name:Notification.Name("titleColor"),object: nil)
        
    }
    
}
