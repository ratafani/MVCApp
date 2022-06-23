//
//  SwiftUICell.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 23/06/22.
//

import SwiftUI

struct SwiftUICell: View {
    var zoomBackground : ZoomBackground
    
    var body: some View {
        HStack{
            Image(zoomBackground.image)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(20)
            Text(zoomBackground.title)
                .font(.title3)
            Spacer()
        }.padding()
    }
}

struct SwiftUICell_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICell(zoomBackground: ZoomBackground(title: "Jempol", detail: "Dipake saat setuju dengan teman mu", image: "patung_jempol"))
            
    }
}
