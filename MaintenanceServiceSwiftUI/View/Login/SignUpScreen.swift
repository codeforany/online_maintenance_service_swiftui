//
//  SignUpScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 09/08/24.
//

import SwiftUI

struct SignUpScreen: View {
    @State var showOTP = false
    @State var txtFirstName = ""
    @State var txtLastName = ""
    @State var txtCellNumber = ""
    @State var txtZipCode = ""
    
    @State var txtEmail = ""
    @State var txtPassword = ""
    @State var showPasssword = false
    
    var body: some View {
        ZStack(alignment: .center){
            Image("bg")
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth + 15, height: .screenHeight)
            ScrollView {
            VStack{
                    
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.7))
                    .topWithSafe
                
              
                    VStack(spacing: 0){
                            
                        Text( "Sign Up" )
                            .font(.customfont(.bold, fontSize: 32))
                            .top15
                        
                        TextField("First Name", text: $txtFirstName)

                            .font(.customfont(.regular, fontSize: 17))
                            .multilineTextAlignment(.leading)
                            .frame(height: 45)
                          
                          
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color.placeholder)
                            .frame(height: 1)
                            .maxCenter
                        
                        TextField("Last Name", text: $txtLastName)

                            .font(.customfont(.regular, fontSize: 17))
                            .multilineTextAlignment(.leading)
                            .frame(height: 45)
                         
                          
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color.placeholder)
                            .frame(height: 1)
                            .maxCenter
                        
                        
                        TextField("Email", text: $txtEmail)

                            .font(.customfont(.regular, fontSize: 17))                      .keyboardType(.emailAddress)
                            .multilineTextAlignment(.leading)
                            .frame(height: 45)
                          
                          
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color.placeholder)
                            .frame(height: 1)
                            .maxCenter
                        
                        
                        
                        if showPasssword {
                            TextField("Password", text: $txtPassword)

                                .font(.customfont(.regular, fontSize: 17))
                                .multilineTextAlignment(.leading)
                                .frame(height: 45)
                            
                                
                        }else{
                            SecureField("Password", text: $txtPassword)
                                .font(.customfont(.regular, fontSize: 17))
                                .multilineTextAlignment(.leading)
                                .frame(height: 45)
                            
                               
                        }
                        
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color.placeholder)
                            .frame(height: 1)
                            .maxCenter
                        
                        TextField("Cell Number", text: $txtCellNumber)

                            .font(.customfont(.regular, fontSize: 17))                      .keyboardType(.phonePad)
                            .multilineTextAlignment(.leading)
                            .frame(height: 45)
                     
                          
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color.placeholder)
                            .frame(height: 1)
                            .maxCenter
                        
                        
                        TextField("Zip Code", text: $txtZipCode)

                            .font(.customfont(.regular, fontSize: 17))
                            .multilineTextAlignment(.leading)
                            .frame(height: 45)
                       
                          
                        RoundedRectangle(cornerRadius: 1)
                            .fill(Color.placeholder)
                            .frame(height: 1)
                            .maxCenter
             
                
                    
                    Button(action: {
                        showOTP = true
                    }, label: {
                        Text("SIGN UP")
                            .font(.customfont(.bold, fontSize: 17))
                            .padding()
                    })
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .maxCenter
                    .background( Color.primaryApp )
                    .cornerRadius(30)
                    .shadow(radius: 2, y: 2)
                    .padding()
                    
                   
                    
                    Text("Or Sign in With")
                        .font(.customfont(.regular, fontSize: 14))
                        .foregroundColor(.placeholder)
                    
                    
                    HStack{
                        
                        Button(action: {
                            
                        }, label: {
                            Image("fb")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 40)
                        })
                        .foregroundColor(.white)
                        
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 40)
                        })
                        .foregroundColor(.white)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Image("in")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 40)
                        })
                        .foregroundColor(.white)
                    }
                    .padding(.horizontal, 35)
                    
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 25)
                .frame(width: .widthPer(per: 0.9))
                .background( RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(radius: 2, y: 2)
                )
                .padding(.vertical, 25)
                .padding(.horizontal, 8)
                
                
                Button(action: {
                    
                }, label: {
                    Text("SIGN IN")
                        .font(.customfont(.regular, fontSize: 17))
                        .padding()
                })
                .foregroundColor(.primaryText)
                .frame(width: .widthPer(per: 0.6))
                .overlay{
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.primaryText, lineWidth: 2)
                }
                .bottomWithSafe
                
                
                
                
            }
            }
        }
        .bgNavLink(content: CellNumberVerifyScreen(), isActive: $showOTP)
        .navHide
    }
}

#Preview {
    SignUpScreen()
}
