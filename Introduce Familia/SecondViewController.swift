//
//  SecondViewController.swift
//  Introduce Familia
//
//  Created by Dax Gerber on 9/22/23.
//

import UIKit

class SecondViewController: UIViewController {

    var nameOfPerson: String = ""
    

    
    
    @IBOutlet weak var memberDescription: UILabel!
    @IBOutlet weak var memberImage: UIImageView!
    @IBOutlet weak var memberName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        // if sender == family member -> set family member image and description
        switch nameOfPerson {
        case "Dax":
            memberDescription.text = daxDescription
            memberName.text = nameOfPerson
            memberImage.image = UIImage(named: "dax")
        case "Kylie":
            memberDescription.text = kylieDescription
            memberName.text = nameOfPerson
            memberImage.image = UIImage(named: "kylie")
        case "Koen":
            memberDescription.text = koenDescription
            memberName.text = nameOfPerson
            memberImage.image = UIImage(named: "koen")
        default:
            memberDescription.text = navyDescription
            memberName.text = nameOfPerson
            memberImage.image = UIImage(named: "navy")
            
        }
    }
    
    let koenDescription = "Koen is 3 1/2 years old. He enjoys playing with cars, building blocks, and fixing things. He has also decided that he would like to be spider-man for halloween this year."
    let navyDescription = "Navy is 1 1/2 years old. She likes snacks, is a complete daredevil, and is a mama's girl through and through."
    let kylieDescription = "Kylie is the beautiful mother of 2 kiddos. She works as a nurse PRN but primarily stays home with the kids. She enjoys designing things, getting out of the house to do something fun, and chocolate in any form"
    let daxDescription = "Dax currently works as a physical therapist, but is interested in a change of career into IOS development. In his spare time, he enjoys playing sports, 3D printing things, and doing projects around the house."
    
}
