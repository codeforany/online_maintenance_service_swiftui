//
//  ChooseYourServiceAreaScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 17/08/24.
//

import SwiftUI

struct ChooseYourServiceAreaScreen: View {
    
    @State private var txtSearch = ""
    @State var selectBusiness = true
    
    var body: some View {
        ZStack{
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
                
                
                VStack{
                    
                    Text("Hi !Choose")
                        .font(.customfont(.bold, fontSize: 32))
                        .maxLeft
                        .foregroundColor(.white)
                    
                    HStack{
                        Text("your")
                            .font(.customfont(.bold, fontSize: 32))
                  
                            .foregroundColor(.white)
                        
                        Text("Service Area")
                            .font(.customfont(.bold, fontSize: 32))
                            .maxLeft
                            .foregroundColor(.primaryText)
                        
                        
                    }
                    
                    HStack(spacing: 15){
                        
                        SelectIconButton(icon: "1", title: "Business", subtitle: "Organisation", isSelect: selectBusiness){
                            
                            selectBusiness = true
                        }
                        
                        SelectIconButton(icon: "2", title: "Home", subtitle: "Personal", isSelect: 
                                            !selectBusiness){
                            
                            selectBusiness = false
                        }
                        
                        
                    }
                   
                    
                }
                .padding(.horizontal, 25)
                .padding(.vertical, 20)
                
                Spacer()
            }
            
            VStack {
                
                Spacer()
                
                
                VStack(spacing: 15){
                    
                    
                    HStack(spacing: 15){
                        
                        RoundedRectangle(cornerRadius: 5)
                            .fill( Color.primaryApp )
                            .frame(width: 15, height: 15)
                        
                        TextField("Enter your location for service", text: $txtSearch)
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(height: 25)
                    }
                    .padding(15)
                    .background( Color.white )
                    .cornerRadius(10)
                    .top15
                    
                    
                    
                    
                    ScrollView{
                            
                        VStack{
                            
                            Text("Current Location:")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                                .foregroundColor(.primaryApp)
                            
                            Text("Service Location near - Jaipur 302019")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                                .foregroundColor(.white)
                            
                        }
                        
                    }
                    
                    HStack(spacing: 15){
                        Button(action: {
                            
                        }, label: {
                            Text("Later")
                                .font(.customfont(.regular, fontSize: 17))
                                .padding()
                        })
                        .foregroundColor(.white)
                        .maxCenter
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                        }
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Search Now")
                                .font(.customfont(.regular, fontSize: 17))
                                .padding()
                        })
                        .foregroundColor(.white)
                        .maxCenter
                        .background( Color.primaryApp )
                        .cornerRadius(30)
                        
                    }
                    
                    
                }
                .all15
                .frame( width: .screenWidth , height: .widthPer(per: 0.8))
                .bottomWithSafe
                .background( Color.secondaryApp )
                .cornerRadius(30, corner: [.topLeft, .topRight])
                
                
            }
        }
        .navHide
        .background( Color.primaryApp )
    }
}

#Preview {
    ChooseYourServiceAreaScreen()
}
