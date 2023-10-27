//
//  ViewController.swift
//  Introduce Familia
//
//  Created by Dax Gerber on 9/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navyButton: UIButton!
    @IBOutlet weak var momButton: UIButton!
    @IBOutlet weak var dadButton: UIButton!
    @IBOutlet weak var koenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        
        if segue.identifier == "mom" {
            destination.nameOfPerson = "Kylie"
        } else if segue.identifier == "dad" {
            destination.nameOfPerson = "Dax"
        } else if segue.identifier == "koen" {
            destination.nameOfPerson = "Koen"
        } else if segue.identifier == "navy" {
            destination.nameOfPerson = "Navy"
        }
    }
    
    
    
}

