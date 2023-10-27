//
//  SecondViewController.swift
//  Introduce Familia
//
//  Created by Dax Gerber on 9/22/23.
//

import UIKit

class SecondViewController: UIViewController {

    var familyMember: familyMember?

    @IBOutlet weak var memberDescription: UILabel!
    @IBOutlet weak var memberImage: UIImageView!
    @IBOutlet weak var memberName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        // if sender == family member -> set family member image and description
        if let familyMember = familyMember {
            memberDescription.text = familyMember.description
            memberImage.image = UIImage(named: familyMember.image)
            memberName.text = familyMember.name
        }
    }
    
    
    
}
