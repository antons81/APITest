//
//  ViewController.swift
//  APITest
//
//  Created by Anton Stremovskiy on 4/21/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.req()
    }
    
    
    func req() {
        
        ServerHelper.shared.createRequest(url: HttpConstants.BASE_URL, method: .get, params: nil) { (contact: ContactsResponse) in
            for contacts in contact.result {
                debugPrint(contacts.name, contacts.email, contacts.phone.mobile)
            }
        }
    }
    
}

