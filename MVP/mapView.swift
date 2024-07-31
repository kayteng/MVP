//
//  mapView.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct mapView: View {
    var body: some View {
        NavigationStack {
            ZStack (alignment: .bottom){
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                VStack (alignment: .leading){
                        Text ("Resources/Map")
                            .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            .padding(.leading)
                    ScrollView{
                            Image("camera")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .border(Color(red: 193/255, green: 138/255, blue: 118/255),width:4)
                                .padding(.horizontal)
                            Text ("More Info...")
                                .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                                .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            Text("lalallalallalalallalalalalla")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                            Spacer() }
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
                    Image("map icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding([.top, .leading, .bottom], 10.0)
                        .frame(width: 70.0, height: 70.0)
                    NavigationLink(destination: profileView()) {
                        Image("profile icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .bottom, .trailing], 10.0)
                        .frame(width: 70.0, height: 70.0)}
                }
                .background(Rectangle())
                .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                .cornerRadius(45)
            }
                Button{
//                    var hi = 1
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
    mapView()
}
