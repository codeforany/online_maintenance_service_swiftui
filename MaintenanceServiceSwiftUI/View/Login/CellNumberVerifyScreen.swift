//
//  CellNumberVerifyScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 09/08/24.
//

import SwiftUI

struct CellNumberVerifyScreen: View {
    
    @State var txtCode = ""
    
    
    var body: some View {
        ZStack(alignment: .center){
            Image("otp_bg")
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.7))
                    .topWithSafe
                
                Spacer()
                
                Text("Please verify")
                    .font(.customfont(.bold, fontSize: 32))
                    .foregroundColor(.white)
                    .maxLeft
                    .padding(.horizontal, 25)
                
                HStack(){
                    
                    Text("your")
                        .font(.customfont(.bold, fontSize: 32))
                        .foregroundColor(.white)
                        
                    
                    Text("Cell Number")
                        .font(.customfont(.bold, fontSize: 32))
                        .foregroundColor(.primaryText)
                        .maxLeft
                    
                }
                .padding(.horizontal, 25)
                
                VStack(spacing: 8){
                    Text("Please enter the 4 digit verification")
                        .font(.customfont(.regular, fontSize: 15))
                        .foregroundColor(.primaryText)
                        .maxCenter
                        .padding(.horizontal, 16)
                    
                    Text("Code send to your cell number")
                        .font(.customfont(.regular, fontSize: 15))
                        .foregroundColor(.primaryText)
                        .maxCenter
                        .padding(.horizontal, 16)
                    
                    HStack{
                        Text("310 555 5555")
                            .font(.customfont(.bold, fontSize: 17))
                            .foregroundColor(.primaryText)
                        
                        Text("via SMS message")
                            .font(.customfont(.regular, fontSize: 16))
                            .foregroundColor(.primaryText)
                    }
                    
                    HStack{
                        
                        Text("or")
                            .font(.customfont(.regular, fontSize: 16))
                            .foregroundColor(.primaryText)
                        
                        Text("CHANGE")
                            .font(.customfont(.bold, fontSize: 17))
                            .foregroundColor(.primaryApp)
                        
                        Text("your number.")
                            .font(.customfont(.regular, fontSize: 16))
                            .foregroundColor(.primaryText)
                    }
                    
                }
                .padding()
                .background(
                    Color.white
                        .cornerRadius(10)
                        .shadow(radius: 2)
                )
                
                
                
                
                OTPTextField(txtOTP: $txtCode, width: 60)
                    .vertical15
                
                Button(action: {
                    
                }, label: {
                    Text("Resend OTP")
                        .foregroundColor(.primaryText)
                })
                
                
                Spacer()
                
                
                Button(action: {
                    
                }, label: {
                    Image("next")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                })
                .padding()
                .frame(width: 80, height: 80)
                .background( Color.secondaryApp )
                .cornerRadius(40)
                .bottomWithSafe
                .padding(.bottom, 40)
            }
            .padding(.horizontal, 30)
            
        }
        .navHide
    }
}

#Preview {
    CellNumberVerifyScreen()
}
