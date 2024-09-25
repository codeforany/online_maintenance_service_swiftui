//
//  CheckoutScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI

struct CheckoutScreen: View {
   
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var selectAddress = true
    @State private var showEditCard = false
    @State private var showReceipe = false
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
                    
                    Text(  "Check Out")
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
                
                ScrollView {
                    
                    VStack(spacing: 15 ){
                        
                        
                       
                            
                            HStack{
                                
                                VStack(alignment: .leading, spacing: 20){
                                    
                                    Text( "Address for Service")
                                        .font(.customfont(.bold, fontSize: 18))
                                        .maxLeft
                                        .foregroundColor(.primaryText)
                                    
                                    
                                    Text( "34 Keshar Vihar ,Civil line , near high, court, Jaipur")
                                        .font(.customfont(.regular, fontSize: 15))
                                        .maxLeft
                                        .foregroundColor(.primaryText)
                                    
                                    
                                    Button {
                                        
                                    } label: {
                                        Text( "Edit")
                                            .font(.customfont(.regular, fontSize: 12))
                                            .foregroundColor(Color.primaryApp)
                                    }

                                    
                                }
                                
                                Button {
                                    selectAddress = true
                                } label: {
                                    Image( selectAddress ? "check_box_check" : "check_box" )
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                }
                            }
                            .padding(.vertical, 15)
                            .all15
                            .background( Color.white.cornerRadius(15).shadow(radius: 2) )
                            
                            .all15
                            .padding(.top, 40)
                           
                            
                        HStack{
                            VStack(alignment: .leading, spacing: 20){
                                
                                Text( "Payment")
                                    .font(.customfont(.bold, fontSize: 18))
                                    .maxLeft
                                    .foregroundColor(.primaryText)
                                
                                
                                HStack{
                                    
                                    Image("master_card")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 35)
                                    
                                    VStack{
                                        Text( "Master Card")
                                            .font(.customfont(.regular, fontSize: 12))
                                            .maxLeft
                                            .foregroundColor(.placeholder)
                                        
                                        Text( "**** **** **** 1234")
                                            .font(.customfont(.bold, fontSize: 15))
                                            .maxLeft
                                            .foregroundColor(.primaryText)
                                    }
                                    
                                }
                                
                                
                                
                                Button {
                                    showEditCard = true
                                } label: {
                                    Text( "Update")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .foregroundColor(Color.primaryApp)
                                }

                                
                            }
                            
                            Button {
                                selectAddress = false
                            } label: {
                                Image( !selectAddress ? "check_box_check" : "check_box" )
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                            }
                        }
                        .padding(.vertical, 15)
                        .all15
                        .background( Color.white.cornerRadius(15).shadow(radius: 2) )
                        
                        .horizontal15
                       
                        
                    }
                    
                    
                }
                
               
                
                
                    HStack(spacing: 15){
                    
                        Button(action: {
                            mode.wrappedValue.dismiss()
                        }, label: {
                            Text("Back")
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
                            showReceipe = true
                        }, label: {
                            Text("PAY")
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
        .bgNavLink(content: EditCardScreen(), isActive: $showEditCard)
        .bgNavLink(content: JobDetailReceiptScreen(), isActive: $showReceipe)
        .navHide
        .background( Color(hex: "F2F4F3") )
    }
}

#Preview {
    CheckoutScreen()
}
