//
//  DummyDB.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 22/06/22.
//

import Foundation

class DummyDB{
    
    static let shared  : DummyDB = DummyDB()
    
    func fetchData()->[ZoomBackground]{
        var arrZoom = [ZoomBackground]()
        
        let a = ZoomBackground(title: "Jempol", detail: "Dipake saat setuju dengan teman mu", image: "patung_jempol")
        arrZoom.append(a)
        
        let b = ZoomBackground(title: "Potong Rambut", detail: "Dipake saat rambut mu butuh di potong", image: "top_collection")
        arrZoom.append(b)
        
        let c = ZoomBackground(title: "Rumah Mewah", detail: "Dipake saat ingin terlihat mewah mewahan", image: "rumah")
        arrZoom.append(c)
        
        return arrZoom
        
    }
}
