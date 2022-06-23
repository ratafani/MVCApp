//
//  DetailView.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 23/06/22.
//

import SwiftUI

struct DetailView: View {
    var zoomBackground : ZoomBackground
    var body: some View {
        VStack{
            Image(zoomBackground.image)
                .resizable()
                .frame( height: 300)
                .scaledToFit()
                .cornerRadius(20)
            Text(zoomBackground.title)
                .font(.title)
                .bold()

            Text(zoomBackground.detail)
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(zoomBackground: ZoomBackground(title: "Jempol", detail: "Dipake saat setuju dengan teman mu", image: "patung_jempol"))
    }
}
