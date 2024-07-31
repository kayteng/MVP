//
//  proflieView.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        NavigationStack {
            ZStack (alignment: .bottom){
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                HStack (alignment : .top){
                    NavigationLink(destination: ContentView()) {
                        Image("home icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                    NavigationLink(destination: infoView()) {
                        Image("info icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                    Image("blank")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)
                    NavigationLink(destination: mapView()){
                        Image("map icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                        Image("profile icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .bottom, .trailing], 10.0)
                        .frame(width: 70.0, height: 70.0)
                }
                .background(Rectangle())
                .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                .cornerRadius(45)
                Button{
                    
                } label: {
                    Image("plus icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                }
            }
        }
    }
}

#Preview {
    profileView()
}
