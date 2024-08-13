//
//  SignInWithEmailScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 06/08/24.
//

import SwiftUI

struct SignInWithEmailScreen: View {
    
    @State var showLoginWithMobile = false
    @State var showSignUp = false
    @State var txtEmail = ""
    @State var txtPassword = ""
    @State var showPasssword = false
    
    var body: some View {
        ZStack(alignment: .center){
            Image("bg")
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth + 15, height: .screenHeight)
            
            VStack{
                    
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.7))
                    .topWithSafe
                
                
                VStack(spacing: 15){
                        
                    Text( "Sign In" )
                        .font(.customfont(.bold, fontSize: 32))
                        .top15
                    
                    
                    TextField("Email", text: $txtEmail)

                        .font(.customfont(.regular, fontSize: 17))                      .keyboardType(.emailAddress)
                        .multilineTextAlignment(.center)
                        .frame(height: 30)
                        .padding()
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
                        }
                    
                    
                    if showPasssword {
                        TextField("Password", text: $txtPassword)

                            .font(.customfont(.regular, fontSize: 17))
                            .multilineTextAlignment(.center)
                            .frame(height: 30)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
                            }
                    }else{
                        SecureField("Password", text: $txtPassword)
                            .font(.customfont(.regular, fontSize: 17))
                            .multilineTextAlignment(.center)
                            .frame(height: 30)
                            .padding()
                            .overlay{
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
                            }
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("SIGN IN")
                            .font(.customfont(.bold, fontSize: 17))
                            .padding()
                    })
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .maxCenter
                    .background( Color.primaryApp )
                    .cornerRadius(30)
                    .shadow(radius: 2, y: 2)
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot Password | ")
                                .font(.customfont(.regular, fontSize: 14))
                                .padding(.horizontal, 8)
                        })
                        .foregroundColor(.primaryText)
                        
                        Button(action: {
                            showLoginWithMobile = true
                        }, label: {
                            Text("OTP Login")
                                .font(.customfont(.regular, fontSize: 14))
                                
                        })
                        .foregroundColor(.primaryText)
                        
                    }
                    
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
                    
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 25)
                .frame(width: .widthPer(per: 0.9))
                .background( RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .shadow(radius: 2, y: 2)
                )
                .padding(.vertical, 25)
                
                
                Button(action: {
                    showSignUp = true
                }, label: {
                    Text("SIGNUP")
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
                
                
                Spacer()
                
            }
        }
        .bgNavLink(content: SignInWithMobileScreen(), isActive: $showLoginWithMobile)
        .bgNavLink(content: SignUpScreen(), isActive: $showSignUp)
        .navHide
    }
}

#Preview {
    SignInWithEmailScreen()
}
