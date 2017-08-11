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
    
    @IBOutlet weak var tableView: UITableView!
    
    var contactData = [Contact]() {
        didSet {
            tableView.reloadData()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.req()
    }
    
    
    func req() {
        
        ServerHelper.shared.createRequest(url: HttpConstants.BASE_URL, method: .get, params: nil) { (contact: ContactsResponse) in
            self.contactData = contact.result
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        let contact = contactData[indexPath.row]
        cell.configure(contact)
        return cell
    }
}

