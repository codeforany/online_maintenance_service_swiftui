//
//  RequestAcceptingScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI
import MapKit

struct RequestAcceptingScreen: View {
    @State private var txtMessage = ""
    @State var selectBusiness = true
    @State private var selectCat = 0
    @State private var showPayment = false
    @State private var showChat = false
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(21.1702, 72.8311), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
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
                    
                    Text("Request Accepting")
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
                
                ZStack{
                    Map(coordinateRegion: $region)
                    
                    
                    VStack{
                     
                        VStack(spacing: 0){
                            
                           
                                HStack{
                                        
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill( Color.primaryApp)
                                        .frame(width: 10, height: 10)
                                    
                                    Text("Service at")
                                        .font(.customfont(.bold, fontSize: 13))
                                        .maxLeft
                                        .foregroundColor(.placeholder)
                                    
                                }
                                
                                Text("34 Keshar Vihar , Jaipur")
                                    .font(.customfont(.bold, fontSize: 13))
                                    .lineLimit(1)
                                    .frame(height: 25)
                                    .maxLeft
                                    .foregroundColor(.primaryText)
                            
                            
                            
                        }
                        .padding(8)
                        .frame(height: 70)
                        .background( Color.white.cornerRadius(5).shadow(radius: 2) )
                        .padding(.horizontal, 25)
                    
                        Image("center_pin")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 60)
                            .top15
                            .padding(.bottom, 70)
                        
                    }
                    
                   
                    
                    
                    
                }
                
                
                
                VStack{
                    HStack{
                        
                        Image("u2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                            
                        
                        VStack{
                            Text("Alex Harris ")
                                .font(.customfont(.bold, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.primaryText)
                            Text("Plumber")
                                .font(.customfont(.regular, fontSize: 13))
                                
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                        }
                        
                    }
                    .top15
                    .horizontal15
                    
                    HStack{
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.orange)
                            .frame(width: 15, height: 15)
                        
                        Text("4.2")
                            .font(.customfont(.regular, fontSize: 11))
                            
                            .foregroundColor(.placeholder)
                        
                        
                        Text("$ 20")
                            .font(.customfont(.regular, fontSize: 14))
                            .maxLeft
                            .foregroundColor(.primaryText)
                    }
                    .horizontal15
                    
                    
                    Rectangle()
                        .fill( Color.black.opacity(0.1) )
                        .frame(height: 1)
                        .vertical8
                    
                    HStack{
                        
                        IconButton(icon: "calling", title: "Call Now") {
                            
                        }
                        IconButton(icon: "share", title: "Share Detail") {
                            
                        }
                        IconButton(icon: "chat", title: "Chat") {
                            showChat = true
                        }
                        IconButton(icon: "more", title: "More") {
                            
                        }
                    }
                    .bottom15
                    
                }
                .background( Color.white )
              
                
                
                    
                    HStack(spacing: 15){
                        Button(action: {
                            
                        }, label: {
                            Text("Cancel Request")
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
                            showPayment = true
                        }, label: {
                            Text("Pay Now")
                                .font(.customfont(.regular, fontSize: 17))
                                .padding()
                        })
                        .foregroundColor(.white)
                        .maxCenter
                        .background( Color.primaryApp )
                        .cornerRadius(30)
                        
                    }
                    .top15
                    .horizontal15
                    .bottomWithSafe
                    .background( Color.secondaryApp )
         
               
               
                
                
            }
        }
        .bgNavLink(content: ChatMessageScreen(), isActive: $showChat)
        .bgNavLink(content: PaymentMethodScreen(), isActive: $showPayment)
        .navHide
        .background( Color.primaryApp )
    }
}

#Preview {
    RequestAcceptingScreen()
}
