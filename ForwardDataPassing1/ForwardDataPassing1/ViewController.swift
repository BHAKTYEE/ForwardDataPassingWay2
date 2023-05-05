//
//  ViewController.swift
//  ForwardDataPassing1
//
//  Created by Mac on 03/05/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: Any) {
        
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        secondViewController?.dataContainer = self.nameTextField.text
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
}

