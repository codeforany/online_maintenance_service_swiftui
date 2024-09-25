//
//  RateForServiceScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 20/08/24.
//

import SwiftUI

struct RateForServiceScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 0) {
                HStack{
                    Button(action: {}, label: {
                        Image("menu")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    
                    Text(  "Rate for Service")
                        .font(.customfont(.bold, fontSize: 17))
                        .maxLeft
                        .foregroundColor(.primaryText)
                    
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    
                }
                .topWithSafe
                .horizontal15
                .background( Color.primaryApp)
                
                ScrollView{
                    
                    VStack(spacing:0){
                        
                        ZStack(alignment: .bottom){
                            
                            Rectangle()
                                .fill( Color.primaryApp )
                                .frame(width: .screenWidth, height: .widthPer(per: 0.5))
                                .shadow(radius: 2)
                                .padding(.bottom, 100)
                            
                            Rectangle()
                                .fill( Color.white.opacity(0.3) )
                                .cornerRadius(10)
                                .padding(.horizontal, 35)
                                .frame(width: .screenWidth, height: .widthPer(per: 0.55))
                            
                            Rectangle()
                                .fill( Color.white.opacity(0.5) )
                                .cornerRadius(10)
                                .padding(.horizontal, 25)
                                .frame(width: .screenWidth, height: .widthPer(per: 0.53))
                            
                            VStack(spacing: 0){
                                
                                Spacer()
                                
                                HStack{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.orange)
                                    
                                    Text(  "4.2")
                                        .font(.customfont(.regular, fontSize: 22))
                                        .foregroundColor(.placeholder)
                                }
                                
                                Text(  "Alex Harris")
                                    .font(.customfont(.regular, fontSize: 22))
                                    .foregroundColor(.primaryText)
                                    .bottom15
                                
                                Divider()
                                
                                HStack{
                                    
                                    VStack{
                                        Text(  "3250")
                                            .font(.customfont(.bold, fontSize: 17))
                                            .foregroundColor(.primaryText)
                                        
                                        Text(  "Total Jobs")
                                            .font(.customfont(.regular, fontSize: 14))
                                            .foregroundColor(.placeholder)
                                    }
                                    .maxCenter
                                    
                                    Rectangle()
                                        .fill( Color.gray.opacity(0.3) )
                                        .frame(width: 1, height: 70)
                                    
                                    VStack{
                                        Text(  "2.5")
                                            .font(.customfont(.bold, fontSize: 17))
                                            .foregroundColor(.primaryText)
                                        
                                        Text(  "Years")
                                            .font(.customfont(.regular, fontSize: 14))
                                            .foregroundColor(.placeholder)
                                    }
                                    .maxCenter
                                }
                                
                            }
                            .frame(width: .screenWidth - 30, height: .widthPer(per: 0.5))
                            .background( Color.white.cornerRadius(10).shadow(radius: 5) )
                            .horizontal15
                            
                            Image("u2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(50)
                                .shadow(radius: 2)
                                .padding(.bottom, .widthPer(per: 0.38))
                            
                        }
                        
                        VStack{
                            
                            Text(  "PERSONAL INFO")
                                .font(.customfont(.bold, fontSize: 22))
                                .foregroundColor(.primaryText)
                            
                                .maxLeft
                                .bottom15
                            
                            Text(  "+91 931 488 2375")
                                .font(.customfont(.regular, fontSize: 15))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                                .padding(.leading, 50)
                                .bottom15
                            
                            Divider()
                            
                            Text(  "Alex@getfix.com")
                                .font(.customfont(.regular, fontSize: 15))
                                .foregroundColor(.secondaryText)
                                .accentColor(.secondaryText)
                                .maxLeft
                                .padding(.leading, 50)
                                .bottom15
                            
                            Divider()
                            
                            Text(  "English and Apanish")
                                .font(.customfont(.regular, fontSize: 15))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                                .padding(.leading, 50)
                                .bottom15
                            
                            Divider()
                            
                            Text(  "RM8 NL, PO3457, New York")
                                .font(.customfont(.regular, fontSize: 15))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                                .padding(.leading, 50)
                                .bottom15
                            
                            
                            
                            Text(  "Reviews")
                                .font(.customfont(.bold, fontSize: 22))
                                .foregroundColor(.primaryText)
                            
                                .maxLeft
                                .vertical15
                            
                            
                            VStack{
                                HStack{
                                    
                                    Image("u1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                    
                                    Text(  "SIVAG")
                                        .font(.customfont(.regular, fontSize: 13))
                                        .foregroundColor(.placeholder)
                                    
                                    HStack(spacing: 4){
                                        
                                        ForEach(0..<5, id:\.self) {
                                            index in
                                            
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 15, height: 15)
                                                .foregroundColor(.orange)
                                        }
                                        
                                    }
                                    
                                }
                                .maxLeft
                                
                                Text(  "Service good,")
                                    .font(.customfont(.regular, fontSize: 14))
                                    .foregroundColor(.placeholder)
                                    .maxLeft
                            }
                            
                            
                            
                            
                        }
                        .padding(25)
                    }
                    
                }
            }
        }
        .navHide
    }
}

#Preview {
    RateForServiceScreen()
}
