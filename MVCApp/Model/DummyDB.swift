//
//  DummyDB.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 23/06/22.
//

import Foundation

class DummyDB{
    
    static let shared : DummyDB = DummyDB()
    
    func fetchData()->[ZoomBackground]{
        var arrZoom = [ZoomBackground]()
        
        let data1 = ZoomBackground(title: "Jempol", detail: "Di pake saat kita setuju sama temen kita di zoom", image: "patung_jempol")
        let data2 = ZoomBackground(title: "Potong Rambut", detail: "Di pake saat kita Rambutnya gondrong dan minta pendapat style potong rambut", image: "top_collection")
        let data3 = ZoomBackground(title: "Rumah Mewah", detail: "Di pake saat kita pengen terlihat elit dan kaya", image: "rumah")
        
        arrZoom.append(data1)
        arrZoom.append(data2)
        arrZoom.append(data3)
        
        
        return arrZoom
    }
}
