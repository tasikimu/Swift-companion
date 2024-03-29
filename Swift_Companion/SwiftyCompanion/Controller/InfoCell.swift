//
//
//  ViewController.swift
//  Swift_Companion
//
//  Created by Tjelaje ASIKIMU on 2019/11/11.
//  Copyright © 2019 Tjelaje ASIKIMU. All rights reserved.
//

import Foundation
import UIKit

class InfoCell: UITableViewCell {
    
    @IBOutlet var NameSurname: UILabel!
    @IBOutlet var Level: UILabel!
    @IBOutlet var Face: UIImageView!
    @IBOutlet var CorrectionPoints: UILabel!
    @IBOutlet var PhoneNumber: UILabel!
    @IBOutlet var Email: UILabel!
    @IBOutlet var Wallet: UILabel!
    @IBOutlet var Place: UILabel!
    
    var Image : UIImage?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func    setLabelNames(with Data: UserData){
        
        NameSurname?.text = Data.NameSurname
        PhoneNumber?.text = "Phone: " + Data.Number
        CorrectionPoints?.text = "Points: " + Data.Points
        Level?.text = "Level: " + Data.Level
        Email?.text = "Email: " + Data.Email
        Wallet?.text = "Wallet: " + Data.Wallet
        Face?.image = Data.ImageDown
        
        if Data.Place.count > 0 {
            Place?.text = "Place: " + Data.Place
        } else {
            Place?.text = "Place: Unavailable"
        }
    }
}

