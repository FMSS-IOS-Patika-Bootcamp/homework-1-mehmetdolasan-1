//
//  ViewController.swift
//  HomeWork1
//
//  Created by Mehmet Dolasan on 5.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var facultyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func toAddStudentPageButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toAddViewController", sender: nil)//Anasayfadaki '+' butonuna basınca sayfa geçişini tetikler.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {//Sayfa geçişini dinleyen fonk.
        if segue.identifier == "toAddViewController" {//segue identifier'a göre geçiş dinleme işlemi
            let destinationViewController = segue.destination as! AddViewController//geçiş sonucunda açılacak view controller tipinde bir değişken oluşturuldu.
            destinationViewController.delegate = self//bu değişken sayesinde ilgili delegeye yetkilendirme yapıldı.
        }
    }
}

extension ViewController: AddViewControllerToViewControllerProtocol{//oluşturduğumuz çatı protocol verilerin geleceği/gösterileceği view controller'a extension ile conform edilir.
    func sendStudentInfo(name: String, lastName: String, eMail: String, gender: String, faculty: String, department: String) {
        nameLabel.text = name
        lastNameLabel.text = lastName
        eMailLabel.text = eMail
        genderLabel.text = gender
        facultyLabel.text = faculty
        departmentLabel.text = department
    }
}


