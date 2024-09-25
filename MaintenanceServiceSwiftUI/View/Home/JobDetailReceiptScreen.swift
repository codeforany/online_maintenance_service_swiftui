//
//  JobDetailReceiptScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 19/08/24.
//

import SwiftUI

struct JobDetailReceiptScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var showGiveRate = false
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button(action: {}, label: {
                        Image("menu")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    Button(action: {
                        showGiveRate = true
                    }, label: {
                        Text(  "Jobs Details & Receipt")
                            .font(.customfont(.bold, fontSize: 17))
                            .maxLeft
                            .foregroundColor(.primaryText)
                        
                    })
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
                    
                    VStack{
                        
                        HStack(alignment: .top, spacing: 0){
                            Text(  "$")
                                .font(.customfont(.regular, fontSize: 16))
                                .foregroundColor(.primaryApp)
                            
                            Text(  "154.75")
                                .font(.customfont(.bold, fontSize: 32))
                                .foregroundColor(.primaryApp)
                            
                        }
                        .vertical15
                        
                        
                        Text(  "Payment made successfully by Card")
                            .font(.customfont(.regular, fontSize: 20))
                            .foregroundColor(.primaryText)
                        
                        
                        Divider()
                            .vertical8
                        
                        
                        HStack{
                            Text(  "Job Details")
                                .font(.customfont(.bold, fontSize: 17))
                                .foregroundColor(.placeholder)
                                .maxLeft
                            
                            Text(  "2Hrs.30min")
                                .font(.customfont(.regular, fontSize: 14))
                                .foregroundColor(.primaryApp)
                               
                        }
                        .horizontal15
                        .bottom8
                    
                        
                        Text(  "new shower installed with wall sockets and  general  service and cleaning  pipe...")
                            .font(.customfont(.regular, fontSize: 15))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.placeholder)
                            .horizontal15
                        
                        
                        Divider()
                            .vertical8
                        
                        
                        HStack{
                            Text(  "Date & Time")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "22 Aug'24 at 09:42 am")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        HStack{
                            Text(  "Service Type")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "Plumber")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        HStack{
                            Text(  "Job Type")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "Installation")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                    
                        
                        HStack{
                            Text(  "You rated")
                                .font(.customfont(.regular, fontSize: 14))
                                .foregroundColor(.placeholder)
                                
                            
                            Text(  "\"Alex Harris\"")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.primaryText)
                            
                            Image("u2")
                                .resizable()
                                .scaledToFit()
                            
                            
                                .frame(width: 30, height: 30)
                            
                            HStack(spacing: 4){
                                
                                ForEach(0..<5, id:\.self) {
                                    index in
                                    
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(.orange)
                                }
                                
                            }
                               
                        }
                        .horizontal15
                        .bottom15
                        
                        
                    }
                    
                    
                    HStack{
                        
                        Text(  "RECEIPT")
                            .font(.customfont(.bold, fontSize: 22))
                            .foregroundColor(.primaryText)
                            .maxLeft
                            .horizontal15
                            .frame(height: 40)
                    }
                    .vertical15
                    .background(Color(hex: "f2f4f3"))
                    
                    
                    VStack{
                        
                        HStack{
                            Text(  "Job Fees")
                                .font(.customfont(.bold, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "$100.25")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        
                        HStack{
                            Text(  "Txt")
                                .font(.customfont(.bold, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "$10.00")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        
                        HStack{
                            Text(  "+ Parts Amt.")
                                .font(.customfont(.bold, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "$50.50")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        
                        HStack{
                            Text(  "Discount")
                                .font(.customfont(.bold, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "$10.00")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        
                        HStack{
                            Text(  "Topup Added")
                                .font(.customfont(.bold, fontSize: 17))
                                .foregroundColor(.secondaryText)
                                .maxLeft
                            
                            Text(  "$25.00")
                                .font(.customfont(.regular, fontSize: 17))
                                .foregroundColor(.placeholder)
                               
                        }
                        .horizontal15
                        .bottom8
                        
                    }
                    .horizontal15
                    .vertical15
                    
                    Divider()
                    
                    HStack{
                        Text(  "Your Payment")
                            .font(.customfont(.bold, fontSize: 17))
                            .foregroundColor(.green)
                            .maxLeft
                        
                        Text(  "$25.00")
                            .font(.customfont(.bold, fontSize: 20))
                            .foregroundColor(.green)
                           
                    }
                    .horizontal15
                    .bottom8
                    
                    Text(  "This job was towards you expectation you received Guaranteed Good Service")
                        .font(.customfont(.regular, fontSize: 13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.placeholder)
                        .maxLeft
                        .horizontal15
                }
                .bottomWithSafe
                
            }
            
            
        }
        .bgNavLink(content: UserRateSubmitScreen(), isActive: $showGiveRate)
        .navHide
        
//        .background( Color(hex: "F2F4F3") )
    }
}

#Preview {
    JobDetailReceiptScreen()
}
