//
//  ContentView.swift
//  MVP
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                VStack {
                    VStack (alignment: .leading){
                        //Header
                        HStack (alignment:.center) {
                            Text("Your Closet")
                                .fontWeight(.black)
                                .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                                .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            Spacer()
                            NavigationLink(destination: calendarView()) {
                                Image("calendaricon")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 45.0, height: 45.0)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image("searchicon")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50.0, height: 70.0)
                                    
                                }
                                )
                            }
                        }.padding(.horizontal)
                        Text("_________________________________________")
                            .foregroundColor(Color(red: 193/255, green: 138/255, blue: 118/255))
                            .fontWeight(.bold)
                        
                        // Tops
                        ScrollView {
                            VStack(alignment:.leading) {
                                Text ("Tops")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                    .fontWeight(.bold)
                                ScrollView(.horizontal){
                                    HStack(spacing: 20) {
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                    }
                                }
                                
                                Text ("Bottoms")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                ScrollView(.horizontal){
                                    HStack(spacing: 20) {
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                    }
                                }
                                
                                Text("Outerwear")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                ScrollView(.horizontal){
                                    HStack(spacing: 20) {
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                    }
                                }
                                
                                Text("Footwear")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                ScrollView(.horizontal){
                                    HStack(spacing: 20) {
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                    }
                                }
                                
                                Text("Bags")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                ScrollView(.horizontal){
                                    HStack(spacing: 20) {
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                    }
                                }
                                
                                Text("Accessories")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                ScrollView(.horizontal){
                                    HStack(spacing: 20) {
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                        
                                        VStack {
                                            Text("Name")
                                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                                .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.bottom, 10.0)
                                                .frame(width: 150.0, height: 150.0)
                                        }
                                        .background(Rectangle()
                                            .foregroundColor(Color.white))
                                        .cornerRadius(15)
                                    }
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                    HStack{
                        
                    }
                    .background(Rectangle())
                        .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                    .cornerRadius(15)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
