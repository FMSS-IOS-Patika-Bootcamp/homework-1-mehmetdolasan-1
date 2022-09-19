//
//  AddViewController.swift
//  HomeWork1
//
//  Created by Mehmet Dolasan on 5.09.2022.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var eMailTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var facultyTextField: UITextField!
    @IBOutlet weak var departmentTextField: UITextField!
  
    var delegate: AddViewControllerToViewControllerProtocol?//delege için protocol tipinde bir nesne oluşturulur.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addStudentButtonTapped(_ sender: Any) {//Burada gönderilecek veriler kontrollü şekilde alınıp delege ile gönderilir.
        if let name = nameTextField.text,
            let lastName = lastNameTextField.text,
            let eMail = eMailTextField.text,
            let gender = genderTextField.text,
            let faculty = facultyTextField.text,
            let department = departmentTextField.text {
            
            delegate?.sendStudentInfo(name: name, lastName: lastName, eMail: eMail, gender: gender, faculty: faculty, department: department)
          
          navigationController?.popToRootViewController(animated: true)
            
        }
        
    }
    
}
