//
//  Moustache.swift
//  MyMoustacheApp
//
//  Created by kenter on 21/07/2022.
//

import UIKit

struct Moustache {
    var name: String
    var desc: String
     
    var title: String {
        return "La moustache de style \(name)"
    }
     
    var image: UIImage? {
        return UIImage(named: name)
    }
}
