//
//  PaymentMethodScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI

struct PaymentMethodScreen: View {
    @State private var txtMessage = ""
    @State var selectBusiness = true
    @State private var selectType = 0
    @State private var selectSave = false
    @State private var showCheckout = false
    
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
                    
                    Text( selectType == 0 ? "Card Payment" : selectType == 1 ? "Paypal" : "Cash On Deliver")
                        .font(.customfont(.bold, fontSize: 17))
                        .maxLeft
                        .foregroundColor(.primaryText)
                    
                    Button(action: {}, label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    
                }
                .topWithSafe
                .horizontal15
                .background( Color.primaryApp)
                
                VStack {
                    ScrollView {
                        if(selectType == 1) {
                            VStack{
                                
                                
                                Button {
                                    
                                } label: {
                                    
                                    VStack(alignment: .leading, spacing: 20){
                                        HStack{
                                            
                                            
                                            Image( "paypal" )
                                                .resizable()
                                                .scaledToFit()
                                                .frame( height: 25)
                                            
                                            
                                            Spacer()
                                            
                                            Button {
                                                
                                            } label: {
                                                Image( "h_more" )
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 20, height: 20)
                                            }

                                            
                                            
                                        }
                                        
                                       
                                            
                                            Text( "Name on Card")
                                                .font(.customfont(.regular, fontSize: 15))
                                                .maxLeft
                                                .foregroundColor(.placeholder)
                                            
                                            Text( "ameerhasan@paypal.me")
                                                .font(.customfont(.regular, fontSize: 15))
                                                .maxLeft
                                                .foregroundColor(.primaryText)
                                                .accentColor(.primaryText)
                                            
                                        
                                        Text( "Added on 15/02/2017")
                                            .font(.customfont(.regular, fontSize: 12))
                                            .maxLeft
                                            .foregroundColor(.placeholder)
                                        
                                        
                                    }
                                }
                                .maxLeft
                                
                                
                            }
                            .padding(.vertical, 15)
                            .all15
                            .background( Color.white.cornerRadius(15).shadow(radius: 2) )
                            
                            .all15
                            .padding(.top, 40)

                        }else if (selectType == 2) {
                            
                            VStack{
                                
                                
                                Button {
                                    
                                } label: {
                                    HStack{
                                        
                                        VStack(spacing: 15) {
                                            
                                            Text( "Cash On Deliver")
                                                .font(.customfont(.bold, fontSize: 17))
                                                .maxLeft
                                                .foregroundColor(.primaryText)
                                            
                                            Text( "Pay once you got order at your home")
                                                .font(.customfont(.bold, fontSize: 14))
                                                .maxLeft
                                                .foregroundColor(.secondaryText)
                                            
                                        }
                                        
                                        Image( "select_dot" )
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                        
                                    }
                                }
                                .maxLeft
                                
                                
                            }
                            .all15
                            .background( Color.white.cornerRadius(15).shadow(radius: 2) )
                            
                            .all15
                            .padding(.top, 40)
                            
                            
                        }
                    }
                    
                    HStack(spacing: 15) {
                        
                        
                        TabButton(icon: "credit_card_payment", isSelect: selectType == 0) {
                            selectType = 0
                        }
                        
                        TabButton(icon: "ic_paypal", isSelect: selectType == 1) {
                            selectType = 1
                        }
                        
                        TabButton(icon: "Ic_saved_cards", isSelect: selectType == 2) {
                            selectType = 2
                        }
                        
                       

                        
                        
                    }
                    .all15
                }
               
                
                
                    HStack(spacing: 15){
                        
                        if(selectType == 1) {
                            Button(action: {
                                
                            }, label: {
                                
                                Image( selectSave ? "check_box_check" : "check_box"  )
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                
                                Text("Save PayPal ID")
                                    .font(.customfont(.regular, fontSize: 17))
                                    .padding()
                            })
                            .foregroundColor(.white)
                            .maxCenter
                            
                        }else{
                            Spacer()
                        }
                       
                        
                        Button(action: {
                            showCheckout = true
                        }, label: {
                            Text("Next")
                                .font(.customfont(.regular, fontSize: 17))
                                .padding()
                        })
                        .foregroundColor(.white)
                        .frame(width: 140)
                        .background( Color.primaryApp )
                        .cornerRadius(30)
                        .maxRight
                        
                    }
                    .top15
                    .horizontal15
                    .bottomWithSafe
                    .background( Color.secondaryApp )
         
            }
        }
        .bgNavLink(content: CheckoutScreen(), isActive: $showCheckout)
        .navHide
        .background( Color(hex: "F2F4F3") )
    }
}

#Preview {
    PaymentMethodScreen()
}
