//
//  ContentView.swift
//  MVP
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI
import SwiftData
import UIKit
import SwiftUIImageViewer

enum SortOption: String, CaseIterable {
    case title
    case date
    case category
}

extension SortOption {
    
    var systemImage: String {
        switch self {
        case .title:
            "textformat.size.larger"
        case .date:
            "calendar"
        case .category:
            "folder"
        }
    }
}


struct ContentView: View {
    
    @State private var showNewPiece = false
    @Query private var items: [Item]
    @State private var searchQuery = ""
    @State private var showCreateCategory = false
    @State private var showCreateToDo = false
    @State private var toDoToEdit: Item?
    @State private var selectedImage: UIImage? = nil
    
    @State private var isImageViewerPresented = false
    
    @State private var selectedSortOption = SortOption.allCases.first!
    
    @Environment(\.modelContext) var modelContext
    
    var filteredItems: [Item] {
        
        if searchQuery.isEmpty {
            return items.sort(on: selectedSortOption)
        }
        
        let filteredItems = items.compactMap { item in
            
            let titleContainsQuery = item.title.range(of: searchQuery,
                                                      options: .caseInsensitive) != nil
            
            let categoryTitleContainsQuery = item.category?.title.range(of: searchQuery,
                                                                        options: .caseInsensitive) != nil
            
            return (titleContainsQuery || categoryTitleContainsQuery) ? item : nil
        }
        
        return filteredItems.sort(on: selectedSortOption)
        
    }
    
    var body: some View {
        NavigationStack{
            ZStack (alignment: .bottom){
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
                                
                                Button(action: {}, label: {
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
                        
                        // Body
                        ScrollView {
                            VStack(alignment:.leading) {
                                Text ("Tops")
                                    .font(Font.custom("AtkinsonHyperlegible-Regular", size: 36))
                                    .foregroundColor(Color(red: 53/255, green: 60/255, blue: 90/255))
                                    .fontWeight(.bold)
                                ScrollView(.horizontal){
                                    HStack(spacing: 20){
                                        ForEach(filteredItems) { item in
                                            //                                            if let category = item.category {
                                            //
                                            //                                            }
                                            VStack{
                                                Text(item.title)
                                                
                                                
                                                if let selectedPhotoData = item.image,
                                                   let uiImage = UIImage(data: selectedPhotoData) {
                                                    Image(uiImage: uiImage)
                                                        .resizable()
                                                        .scaledToFill()
                                                        .frame(maxWidth: 150, maxHeight: 150)
                                                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                                        .onTapGesture {
                                                            selectedImage = uiImage
                                                            isImageViewerPresented = true
                                                        }
                                                }
                                                
                                            }
                                            //                                            .swipeActions {
                                            //
                                            //                                                Button(role: .destructive) {
                                            //
                                            //                                                    withAnimation {
                                            //                                                        modelContext.delete(item)
                                            //                                                    }
                                            //
                                            //                                                } label: {
                                            //                                                    Label("Delete", systemImage: "trash.fill")
                                            //                                                }
                                            //
                                            //                                                Button {
                                            //                                                    toDoToEdit = item
                                            //                                                } label: {
                                            //                                                    Label("Edit", systemImage: "pencil")
                                            //                                                }
                                            //                                                .tint(.orange)
                                            //
                                            //                                            }
                                        }
                                        
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
                            .padding(.horizontal)
                        }
                        Spacer()
                        //Toolbar
                        HStack (alignment : .top){
                            Image("home icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .leading, .bottom], 10.0)
                                .frame(width: 70.0, height: 70.0)
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
                        Button {
                            print()
                            withAnimation {
                                self.showCreateToDo = true
                            }
                        } label: {
                            Image("plus icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0, height: 100.0)
                        }
                        
                    }
                    .sheet(isPresented: $showCreateToDo,
                           content: {
                        NavigationStack {
                            CreateTodoView()
                        }
                    })
                    
                    
                    
                    
                }
                
                
            }
            
            
        }
    }
}


    
private extension [Item] {
        
        func sort(on option: SortOption) -> [Item] {
            switch option {
            case .title:
                self.sorted(by: { $0.title < $1.title })
            case .date:
                self.sorted(by: { $0.timestamp < $1.timestamp })
            case .category:
                self.sorted(by: {
                    guard let firstItemTitle = $0.category?.title,
                          let secondItemTitle = $1.category?.title else { return false }
                    return firstItemTitle < secondItemTitle
                })
            }
        }
}



#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}


