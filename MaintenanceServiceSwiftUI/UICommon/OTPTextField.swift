//
//  OTPTextField.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 08/08/24.
//

import SwiftUI

struct OTPTextField: View {
    @Binding var txtOTP: String
    @State var placeholder = "-"
    var body: some View {
        ZStack{
            
            HStack(spacing: 15){
                
                Spacer()
                
                let otpCode = txtOTP.map{String($0)}
                
                ForEach(0..<4) {
                    index in
                    
                    if(index < otpCode.count) {
                        Text(otpCode[index])
                            .font(.customfont(.bold, fontSize: 20))
                            .padding(15)
                    }else{
                        Text(placeholder)
                            .font(.customfont(.bold, fontSize: 20))
                            .padding(15)
                    }
                    
                }
                .frame(width: 50, height: 50)
                .background( Color.white.cornerRadius(10).shadow(radius: 3) )
                
                Spacer()
                
            }
            
            TextField("", text: $txtOTP)
                .keyboardType(.numberPad)
                .foregroundColor(.clear)
                .accentColor(.clear)
        }
    }
}

struct OTPTextField_Previews: PreviewProvider {
    @State static var txtCode = "12"
    static var previews: some View {
        OTPTextField(txtOTP: $txtCode)
    }
}
