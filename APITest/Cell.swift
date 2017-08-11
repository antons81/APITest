//
//  Cell.swift
//  APITest
//
//  Created by Anton Stremovskiy on 8/11/17.
//  Copyright © 2017 Anton Stremovskiy. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var work: UILabel!
    @IBOutlet weak var home: UILabel!
    @IBOutlet weak var mobile: UILabel!
    
    
    func configure(_ contact: Contact) {
        
        name.text = contact.name
        email.text = contact.email
        gender.text = contact.gender
        work.text = contact.phone.office
        home.text = contact.phone.home
        mobile.text = contact.phone.mobile
    }
    
}
