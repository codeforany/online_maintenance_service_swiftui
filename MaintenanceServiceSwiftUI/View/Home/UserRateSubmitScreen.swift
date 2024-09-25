//
//  UserRateSubmitScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 21/08/24.
//

import SwiftUI
import MapKit

struct UserRateSubmitScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var showUserRating = false
    @State private var selectRate = 5
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
                    
                    Text("Rate for Service")
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
                    
                    Text("How was your Job?")
                        .font(.customfont(.regular, fontSize: 19))
                        .foregroundColor(.white)
                        .padding(8)
                        .top15
                        .maxCenter
                    
                    
                    Text("Alex Harris")
                        .font(.customfont(.regular, fontSize: 26))
                        .foregroundColor(.primaryApp)
                        .padding(8)
                        .maxCenter
                    
                    
                    HStack(spacing: 15){
                        
                        ForEach(1...5, id: \.self) {
                            index in
                            
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor( index <= selectRate ? Color.primaryApp  : Color.placeholder )
                                .onTapGesture {
                                    
                                    selectRate = index
                                }
                        }
                    }
                    .padding(8)
                    .bottom15
                    
                
                    HStack(spacing: 15){
                        Button(action: {
                            
                        }, label: {
                            Text("Later")
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
                            showUserRating = true
                        }, label: {
                            Text("Rate For Service")
                                .font(.customfont(.regular, fontSize: 17))
                                .padding()
                        })
                        .foregroundColor(.white)
                        .maxCenter
                        .background( Color.primaryApp )
                        .cornerRadius(30)
                        
                    }
                }
                .top15
                .horizontal15
                .bottomWithSafe
                .background( Color.secondaryApp.cornerRadius(25) )
         
            }
        }
        .bgNavLink(content: RateForServiceScreen(), isActive: $showUserRating)
        .navHide
        .background( Color.primaryApp )
    }
}

#Preview {
    UserRateSubmitScreen()
}
