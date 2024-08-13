//
//  SignInWithMobileScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 07/08/24.
//

import SwiftUI
import CountryPicker


struct SignInWithMobileScreen: View {
    
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtMobile = ""
    
    @State var showSignUp = false
    @State private var countryObj: Country?
    @State private var showCountryPicker = false
    @State private var showOTP = false
    
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
                        
                    Text( "Log In" )
                        .font(.customfont(.bold, fontSize: 32))
                        .top15
                        .maxLeft
                    
                    Button {
                        showCountryPicker = true
                    } label: {
                    
                        if let countryObj = countryObj {
                            HStack {

                                Text("\( countryObj.isoCode.getFlag() )")
                                    .font(.system(size: 50))
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(25)
                                
                            
                                Text("\( countryObj.localizedName ) (+\( countryObj.phoneCode ))")
                                    .font(.customfont(.regular, fontSize: 17))
                                    
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.placeholder)
                                    .maxCenter
                            }
                            
                        }
                        
                    }
                    .frame(height: 30)
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
                    }
                    
                    
                    TextField("Mobile", text: $txtMobile)

                        .font(.customfont(.regular, fontSize: 17))
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad)
                        .frame(height: 30)
                        .padding()
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
                        }
                    
                    
                   
                    
                    Button(action: {
                        showOTP = true
                    }, label: {
                        Text("NEXT")
                            .font(.customfont(.bold, fontSize: 17))
                            .padding()
                    })
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .maxCenter
                    .background( Color.primaryApp )
                    .cornerRadius(30)
                    .shadow(radius: 2, y: 2)
                    
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Text("LOGIN WITH EMAIL")
                            .font(.customfont(.regular, fontSize: 14))
                            .padding(.horizontal, 8)
                    })
                    .foregroundColor(.primaryText)
                    
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
        .onAppear() {
            self.countryObj = Country(phoneCode: "91", isoCode: "IN")
        }
        .fullScreenCover(isPresented: $showOTP, content: {
             LoginOTPScreen()
                .background( BackgroundCleanerView() )
                .ignoresSafeArea()
        })
        .sheet(isPresented: $showCountryPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .bgNavLink(content: SignUpScreen(), isActive: $showSignUp)
        .navHide
    }
}

#Preview {
    SignInWithMobileScreen()
}
