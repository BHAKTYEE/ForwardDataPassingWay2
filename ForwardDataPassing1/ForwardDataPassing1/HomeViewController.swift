//
//  HomeViewController.swift
//  ForwardDataPassing1
//
//  Created by Mac on 03/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmitClick(_ sender: Any) {
        
        let extractedFirstName = self.firstNameTextField.text
        let extractedRollNumber = Int(self.rollNumberTextField.text!)
        let extractedCityName  = self.cityTextField.text
        
        
        let dashBoardViewController = self .storyboard?.instantiateViewController(withIdentifier: "DashBoardViewController") as? DashBoardViewController
        
        
        dashBoardViewController?.studentContainer = Student(
         firstName: extractedFirstName ?? "Bhakti",
         rollNumber: extractedRollNumber ?? 1,
         cityName: extractedCityName ?? "Pune")
        
        
        navigationController?.pushViewController(dashBoardViewController!, animated: true)
    }
    
    
}
