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
