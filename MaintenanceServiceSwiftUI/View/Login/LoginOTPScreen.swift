//
//  LoginOTPScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 08/08/24.
//

import SwiftUI

struct LoginOTPScreen: View {
    
    @State var txtCode = ""
    
    var body: some View {
        ZStack{
                
            Rectangle()
                .fill(Color.white.opacity(0.7))
                .ignoresSafeArea()
            
            
            VStack(spacing: 25){
                
                Image("login_otp_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                
                Text("Enter 4 Digits code")
                    .font(.customfont(.regular, fontSize: 15))
                    .foregroundColor(.placeholder)
                
                
                OTPTextField(txtOTP: $txtCode)
                
                Button(action: {
                    
                }, label: {
                    Text("Resend >")
                        .font(.customfont(.regular, fontSize: 15))
                        .foregroundColor(.primaryText)
                })
                .bottom15
                
            }
            .padding(.vertical, 25)
            .horizontal15
            .frame(width: .widthPer(per: 0.75))
            .background( Color.white.cornerRadius(15).shadow(radius: 4) )
            
            
            
        }
    }
}

#Preview {
    LoginOTPScreen()
}
