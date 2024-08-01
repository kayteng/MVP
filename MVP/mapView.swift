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
                        VStack(alignment:.leading){
                            Text ("More Info...")
                                .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                                .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                            Text("Thrift Stores:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Text("  Thrifting is both sustainable, as it reduces waste of the textile and fashion industry by reusing clothes, and good for the economy. Thrift stores put clothes back into the system and in consumers hands, effectively restarting the piece's life cycle. It also benefits the community because many thrift stores are local and thrifted clothes are ofren much more affordable than their retail counterparts. Sometimes you can even find discountinued or limited edition pieces at thrift stores, adding to the thrifting appeal!")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 16))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Spacer()
                            Text("Recycling Centers:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Text("  Recycling centers help make old clothes brand new again! Although the cost of doing this is much more than reselling it in a thrift store, recycling centers give clothes a new life as piece new and current in the industry, meaning it will be nore useful. Recycling centers are also really good option when clothes are too worned, stained, ripped, or torn to be resold in a thrift store. Recycling clothes takes a lot of work and therefore produces a lot of waste, such a water waste, but methods are improving and the recycling industry is growing. Methods to mitigate waste include reusing water (gray water) and use clean energy")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 16))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Spacer()
                            Text("Donation Centers:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Text("  Many donation centers are pop ups but there are certain non-profits that are always collecting clothes, as well as necessities for those in need. Donation centers ensure your clothes are going to where there needed most and their a great way to help others in your community, and even globally as well. It eliminates waste and gives your clothes a second home where they could potentially help save someone's life/future!")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 16))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Spacer()
                            Text("DIY:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 24))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Text("  If you're clothe has lived it's life but it's too special for you to part with it try picking up a new hobby in sewing! You can reuse you fabric in a stuff animal, shirt, dress, bag, scarf, shorts, anything you can think of really! This is a great way to reduce the waste of your clothes, instead of having them rot in a landfill. Make sure to reduce waste futher by keeping fabric scraps you've cut off and saving them for stuffing or a patchwork piece.")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 16))
                                .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                            Spacer()}.padding(.horizontal)}
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
