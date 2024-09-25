//
//  BookServiceScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI
import MapKit

struct BookServiceScreen: View {
    @State private var txtMessage = ""
    @State var selectBusiness = true
    @State private var selectCat = 0
    @State var showRequest = false
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
                    
                    Text("Book Your Service")
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
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 15) {
                        
                        SelectButton(icon: "hygiene", title: "Hygiene", isSelect:  selectCat == 0 ) {
                            selectCat = 0
                            
                        }
                        
                        SelectButton(icon: "electric_plug", title: "Electrical", isSelect:  selectCat == 1 ) {
                            selectCat = 1
                        }
                        
                        SelectButton(icon: "appllication", title: "Appliances", isSelect:  selectCat == 2 ) {
                            selectCat = 2
                            
                        }
                        
                        SelectButton(icon: "plumbing", title: "Plumbing", isSelect:  selectCat == 3 ) {
                            selectCat = 3
                            
                        }
                        
                        SelectButton(icon: "ac_repair", title: "AC Repair", isSelect:  selectCat == 4 ) {
                            selectCat = 4
                            
                        }
                        
                    }
                    .all15
                }
                .background( Color.white )
                .frame(height: 100)
                
                VStack(spacing: 15){
                    
                    
                    VStack(spacing: 8){
                        
                        HStack(spacing: 15){
                            
                            Text("Per Hour Charges:")
                                .font(.customfont(.regular, fontSize: 24))
                                .foregroundColor(.white)
                            
                            Text("$20")
                                .font(.customfont(.bold, fontSize: 24))
                             
                                .foregroundColor(.primaryApp)
                            
                            Spacer()
                        }
                        
                        HStack(spacing: 15){
                            
                            Text("Note:")
                                .font(.customfont(.regular, fontSize: 13))
                                .foregroundColor(.primaryApp)
                            
                            Text("Parts price is additional")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                    .top15
                    
                    ZStack(alignment: .leading){
                        
                        Text( txtMessage == "" ? "Enter job description for service.." : "" )
                            .padding(8)
                            .foregroundColor(.placeholder)
                        
                        TextEditor(text: $txtMessage)
                            .frame(minHeight: 50, maxHeight: 90, alignment: .leading)
                            .cornerRadius(10)
                            .foregroundColor(.primaryText)
                            .font(.customfont(.regular, fontSize: 17))
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.leading)
                       
                    }
                    .padding(8)
                    .background( Color.white )
                    .cornerRadius(10)
                    
                    HStack(spacing: 15){
                        Button(action: {
                            
                        }, label: {
                            Text("Service Later")
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
                            showRequest = true
                        }, label: {
                            Text("Book Now")
                                .font(.customfont(.regular, fontSize: 17))
                                .padding()
                        })
                        .foregroundColor(.white)
                        .maxCenter
                        .background( Color.primaryApp )
                        .cornerRadius(30)
                        
                    }
                    
                    
                }
                .horizontal15
                .bottomWithSafe
                .background( Color.secondaryApp )
               
                
                
            }
        }
        .bgNavLink(content: RequestAcceptingScreen(), isActive: $showRequest)
        .navHide
        .background( Color.primaryApp )
    }
}

#Preview {
    BookServiceScreen()
}
