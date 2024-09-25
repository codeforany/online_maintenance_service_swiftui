//
//  ChatMessageScreen.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 22/08/24.
//

import SwiftUI

struct ChatMessageScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var txtMessage = ""
    @State private var showImagePicker = false
    @State private var showCamera = false
    @State private var showPhotoLibrary = false
    
    var body: some View {
        ZStack{
            
            VStack{
                
                Spacer()
                
                Rectangle()
                    .fill(Color.secondaryApp)
                    .frame(width: .screenWidth, height: .widthPer(per: 0.9))
                    .cornerRadius(25, corner: [.topLeft, .topRight])
                
            }
            
            VStack{
                
                HStack{
                    Button(action: {}, label: {
                        Image("menu")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    
                    Image("only_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                    
                    Spacer()
                    
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
                
                Image("user_placeholder")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .cornerRadius(45)
                
                
                Text("Sujen Matin")
                    .font(.customfont(.bold, fontSize: 17))
                    .foregroundColor(.white)
                
                ScrollView{
                    
                    LazyVStack{
                        ForEach(0...20,  id: \.self) {
                            index in
                            
                            let isSender = index % 3  == 0
                            
                            
                            if(isSender){
                                
                                HStack(spacing: 10){
                                    Text("12:10")
                                        .font(.customfont(.bold, fontSize: 14))
                                        .foregroundColor(.placeholder)
                                    
                                    Text("Hi my name is Charlotte and Purchased  a new Shower , so I want to new  Installation for it.")
                                        .font(.customfont(.bold, fontSize: 14))
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background( Color.chatTextBG.cornerRadius(25, corner: [.topLeft, .topRight, .bottomLeft]) )
                                    
                                    
                                   
                                }
                                
                            }else{
                                HStack(spacing: 10){
                                   
                                    
                                    Text("Hi my name is Charlotte and Purchased  a new Shower , so I want to new  Installation for it.")
                                        .font(.customfont(.bold, fontSize: 14))
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.primaryText)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background( Color.chatTextBG2.cornerRadius(25, corner: [.topLeft, .topRight, .bottomRight]) )
                                    
                                    Text("12:10")
                                        .font(.customfont(.bold, fontSize: 14))
                                        .foregroundColor(.placeholder)
                                    
                                }
                            }
                            
                        }
                    }
                    .padding(20)
                    
                    
                }
                .cornerRadius(35)
                .background( Color.white.cornerRadius(35).shadow(radius: 5) )
                .padding( .horizontal, 20 )
                
                
                HStack{
                    
                    Button(action: {
                        showImagePicker = true
                    }, label: {
                        Image("camera")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    })
                    .frame(width: 50, height: 50)
                    .background( Color.primaryApp.cornerRadius(25) )
                    
                    HStack(spacing: 0){
                        
                        ZStack(alignment: .leading, content: {
                                
                            Text( txtMessage == "" ? "Type message here" : "")
                                .padding(8)
                                .foregroundColor(.placeholder)
                            
                            TextEditor(text: $txtMessage)
                                .frame(minHeight: 40, alignment: .leading)
                                .frame(maxHeight: 90)
                                .cornerRadius(10, antialiased: true)
                                .foregroundColor(.primaryText)
                                .font(.customfont(.regular, fontSize: 17))
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.leading)
                        })
                        
                        Button(action: {}, label: {
                            
                            Image("send")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                        })
                        
                    }
                    .horizontal15
                    .vertical8
                    .background( Color.white )
                    .cornerRadius(30)
                    
                }
                .horizontal15
                .bottomWithSafe
                .top8
            }
            
        }
        .onAppear(){
            UITextView.appearance().backgroundColor = .clear
        }
        .sheet(isPresented: $showPhotoLibrary, content: {
            ImagePicker(sourceType: .photoLibrary) {
                image in
                
            }
        })
        .sheet(isPresented: $showCamera, content: {
            ImagePicker(sourceType: .camera) {
                image in
                
            }
        })
        .actionSheet(isPresented: $showImagePicker, content: {
            
            ActionSheet(title: Text("Select"), buttons: [
                .default( Text("Photo Library") ) {
                    showPhotoLibrary = true
                },
                .default( Text("Camera") ) {
                    showCamera = true
                },
                .destructive(Text("Cancel"))
                
            ])
        })
        .navHide
        .background( Color.primaryApp )
    }
}

#Preview {
    ChatMessageScreen()
}
