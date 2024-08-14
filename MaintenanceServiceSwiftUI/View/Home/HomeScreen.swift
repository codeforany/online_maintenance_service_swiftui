//
//  HomeScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 13/08/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var txtSearch = ""
    
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
                    
                }
            }
            
        }
        .navHide
    }
}

#Preview {
    HomeScreen()
}
