//
//  EditCardScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI
import ShuffleIt

struct EditCardScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var selectAddress = true
    
    @State private var txtName = ""
    @State private var txtCardNumber = ""
    @State private var txtExpiryMonth = ""
    @State private var txtExpiryYear = ""
    @State private var txtCVV = ""
    
    
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
                    
                    Text(  "Edit Card")
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
                    
                    CarouselStack(["**** **** **** 1234", "**** **** **** 5678", "**** **** **** 4561", "**** **** **** 7532",], initialIndex: 0) { cardObj, translation in
                                     
                        
                                    ZStack(alignment: .bottom){
                            
                                        Image("card")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: .widthPer(per: 0.7), height: .widthPer(per: 0.45))
                                            .cornerRadius(20)
                                        
                                        VStack(spacing: 20){
                                            Text( cardObj)
                                                .font(.customfont(.bold, fontSize: 25))
                                                .maxLeft
                                                .foregroundColor(.white)
                                            
                                            
                                            Text( "Expires 12/30")
                                                .font(.customfont(.regular, fontSize: 12))
                                                .maxLeft
                                                .foregroundColor(.white)
                                            
                                        }
                                        .padding(20)
                                    }
                                    .frame(width: .widthPer(per: 0.7), height: .widthPer(per: 0.45))
                                }
                                .carouselScale(0.9)
                                .carouselPadding( 30 )
                                .carouselSpacing( 20 )
                                .carouselStyle(.infiniteScroll)
                                .carouselAnimation(.easeInOut)
                                .padding(.top, 30)
                    
                    
                    VStack(spacing: 15 ){
                        
                        
                       
                            
                        VStack(alignment: .leading, spacing: 15){
                            VStack(spacing: 8){
                                Text( "Name on Card")
                                    .font(.customfont(.regular, fontSize: 15))
                                    .maxLeft
                                    .foregroundColor(.placeholder)
                                
                                
                                TextField("Enter Name on Card", text: $txtName)
                                    .font(.customfont(.regular, fontSize: 15))
                                    .maxLeft
                                    .foregroundColor(.primaryText)
                            }
                            Divider()
                            
                            VStack(spacing: 8){
                                Text( "Card Number")
                                    .font(.customfont(.regular, fontSize: 15))
                                    .maxLeft
                                    .foregroundColor(.placeholder)
                                
                                
                                HStack{
                                    TextField("Enter Card Number", text: $txtCardNumber)
                                        .font(.customfont(.regular, fontSize: 15))
                                        .keyboardType(.numberPad)
                                        .maxLeft
                                        .foregroundColor(.primaryText)
                                    
                                    Image("master_card")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 24)
                                }
                                
                            }
                            Divider()
                            
                            HStack{
                                
                                VStack(spacing: 8){
                                    Text( "Expiry Date")
                                        .font(.customfont(.regular, fontSize: 15))
                                        .maxLeft
                                        .foregroundColor(.placeholder)
                                    
                                    
                                    HStack{
                                        TextField("MM", text: $txtExpiryMonth)
                                            .font(.customfont(.regular, fontSize: 15))
                                            .keyboardType(.numberPad)
                                            
                                            .foregroundColor(.primaryText)
                                        
                                        TextField("YYYY", text: $txtExpiryYear)
                                            .font(.customfont(.regular, fontSize: 15))
                                            .keyboardType(.numberPad)
                                            
                                            .foregroundColor(.primaryText)
                                        
                                        
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity)
                                
                                VStack(spacing: 8){
                                    Text( "CVV")
                                        .font(.customfont(.regular, fontSize: 15))
                                        .maxLeft
                                        .foregroundColor(.placeholder)
                                    
                                    
                                    TextField("Enter CVV", text: $txtCVV)
                                        .font(.customfont(.regular, fontSize: 15))
                                        .keyboardType(.numberPad)
                                        
                                        .foregroundColor(.primaryText)
                                    
                                }
                                .frame(maxWidth: .infinity)
                            }
                            
                            
                            Divider()
                            
                            
                            
                        }
                            .padding(.vertical, 15)
                            .all15
                            .background( Color.white.cornerRadius(15).shadow(radius: 2) )
                            
                            .all15
                            .padding(.top, 40)
                           
                        
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
        .navHide
        .background( Color(hex: "F2F4F3") )
    }
}

#Preview {
    EditCardScreen()
}
