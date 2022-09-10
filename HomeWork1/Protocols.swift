//
//  Protocols.swift
//  HomeWork1
//
//  Created by Mehmet Dolasan on 6.09.2022.
//

import Foundation

protocol AddViewControllerToViewControllerProtocol {//veri transferi için bir çatı protocol oluşturulur.
    func sendStudentInfo(name:String, lastName:String, eMail:String, gender:String, faculty:String, department:String)
}

