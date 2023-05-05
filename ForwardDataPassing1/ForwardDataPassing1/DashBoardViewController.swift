//
//  DashBoardViewController.swift
//  ForwardDataPassing1
//
//  Created by Mac on 03/05/23.
//

import UIKit

class DashBoardViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var studentTableView: UITableView!
    var studentContainer : Student?
    var students = [Student]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXIB()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let fName = studentContainer?.firstName
        let rollNumber : Int = studentContainer!.rollNumber
        let city = studentContainer?.cityName
        
        
        print ("\(fName) -- \(rollNumber) -- \(city)")
        
        students.append(Student(firstName: fName!, rollNumber: rollNumber, cityName: city!))
        studentTableView.reloadData()
    }
    func registerXIB(){
        let uiNib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: "StudentTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for : indexPath) as? StudentTableViewCell
        
        studentTableViewCell?.studentFirstNameLabel.text = students[indexPath.row].firstName
        
        studentTableViewCell?.studentRollNumberLabel.text = String(students[indexPath.row].rollNumber)
        
        studentTableViewCell?.studentCityLabel.text = students[indexPath.row].cityName
        
        return studentTableViewCell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 178.0
    }
}
