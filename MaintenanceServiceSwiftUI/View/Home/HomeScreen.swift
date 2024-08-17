//
//  HomeScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 13/08/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var txtSearch = ""
    @State private var selectCat = 0
    @State private var selectImage = 0
    
    @State var imageArr = [
        "banner1",
        "banner2",
        "banner3",
        "banner4"
    ]
    
    var body: some View {
        ZStack{
            VStack{
                
                VStack{
                    HStack{
                        Button(action: {}, label: {
                            Image("menu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        })
                        
                        Image("only_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        
                        Spacer()
                        
                    }
                    .topWithSafe
                    .horizontal15
                    
                    HStack{
                        
                        Image("search")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        TextField("Search for service ...", text: $txtSearch)
                            .horizontal8
                            .vertical8
                            .frame(height: 50)
                        
                    }
                    .horizontal15
                    .background( Color.white)
                    .cornerRadius(10)
                    .horizontal15
                    
                    HStack{
                            
                        Button(action: {
                            
                        }, label: {
                            
                            Text("Cleaing")
                                .font(.customfont(.regular, fontSize: 14))
                                .background(
                                    Color.white
                                        .frame(height: 1)
                                        .offset(y: 10)
                                )
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Text("Plumbing")
                                .font(.customfont(.regular, fontSize: 14))
                                .background(
                                    Color.white
                                        .frame(height: 1)
                                        .offset(y: 10)
                                )
                        })
                        
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Text("Painter")
                                .font(.customfont(.regular, fontSize: 14))
                                .background(
                                    Color.white
                                        .frame(height: 1)
                                        .offset(y: 10)
                                )
                        })
                        
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Text("Battery")
                                .font(.customfont(.regular, fontSize: 14))
                                .background(
                                    Color.white
                                        .frame(height: 1)
                                        .offset(y: 10)
                                )
                        })
                        
                        
                        Spacer()
                    
                    }
                    .padding(.horizontal, 25)
                    .foregroundColor(.white)
                    
                    HStack{
                        
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Service Location near -")
                            .font(.customfont(.regular, fontSize: 15))
                        
                        Button(action: {}, label: {
                            Text("Jaipur 302019")
                                .font(.customfont(.regular, fontSize: 14))
                                .background(
                                    Color.primaryText
                                        .frame(height: 1)
                                        .offset(y: 10)
                                )
                            
                            Image("down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        })
                        
                        
                        Spacer()
                        
                        
                    }
                    .padding(.horizontal, 25)
                    .vertical8
                    .foregroundColor(.primaryText)
                }
                .bottom15
                .background( Color.primaryApp )
                .cornerRadius(50, corner: [.bottomLeft, .bottomRight])
                
                ScrollView{
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing: 15) {
                            
                            SelectButton(icon: "hygiene", title: "Hygiene", isSelect:  selectCat == 0 ) {
                                selectCat = 0
                            }
                            
                            SelectButton(icon: "electric_plug", title: "Electrical", isSelect:  selectCat == 1 ) {
                                selectCat = 1
                            }
                            
                            SelectButton(icon: "appllication", title: "Appliances", isSelect:  selectCat == 2 ) {
                                selectCat = 2
                            }
                            
                            SelectButton(icon: "plumbing", title: "Plumbing", isSelect:  selectCat == 3 ) {
                                selectCat = 3
                            }
                            
                            SelectButton(icon: "ac_repair", title: "AC Repair", isSelect:  selectCat == 4 ) {
                                selectCat = 4
                            }
                            
                        }
                        .all15
                    }
                    .background( Color.white )
                    .top15
                    
                    TabView(selection: $selectImage) {
                        
                        ForEach(0..<imageArr.count, id:\.self) {
                            index in
                            Image(imageArr[index] ?? "" )
                                .resizable()
                                .scaledToFill()
                                .frame(width: .screenWidth, height: .widthPer(per: 0.55))
                                .tag(index)
                        }
                        
                        
                    }
                    .tabViewStyle(.page)
                    .frame(width: .screenWidth, height: .widthPer(per: 0.55))
                    .vertical8
                    
                    
                    VStack{
                        
                        Text("Best Offer")
                            .font(.customfont(.bold, fontSize: 17))
                            .foregroundColor(.primaryText)
                            .maxLeft
                            .horizontal15
                        
                        Text("Hygienic & single-use products | low-contact services")
                            .font(.customfont(.regular, fontSize: 12))
                            .foregroundColor(.placeholder)
                            .maxLeft
                            .horizontal15
                            .bottom8
                        
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack(spacing: 15) {
                                
                                
                                ForEach(0..<3, id: \.self) {
                                    index in
                                    VStack{
                                        
                                        Image("best_1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: .widthPer(per: 0.7), height: .widthPer(per: 0.35))
                                            .cornerRadius(10)
                                            .bottom8
                                        
                                        Text("Bathroom Cleaning")
                                            .font(.customfont(.bold, fontSize: 13))
                                            .foregroundColor(.primaryText)
                                            .maxCenter
                                        
                                        Text("Free Fan Cleaning & More")
                                            .font(.customfont(.regular, fontSize: 12))
                                            .foregroundColor(.placeholder)
                                            .maxCenter
                                        
                                    }
                                    
                                }
                                
                            }
                            .horizontal15
                            .bottomWithSafe
                        }
                        
                    }
                    .vertical15
                    .background( Color.white )
                    
                    
                }
            }
            .background( Color(hex: "f1f1f1") )
            
        }
        .navHide
    }
}

#Preview {
    HomeScreen()
}
