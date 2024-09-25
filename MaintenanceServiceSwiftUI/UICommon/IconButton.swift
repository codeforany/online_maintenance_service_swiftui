//
//  IconButton.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI

struct IconButton: View {
    @State var icon: String = ""
    @State var title: String = ""
   
    var didSelect: (()->())?
    
    
    var body: some View {
        Button(action: {
            didSelect?()
        }, label: {
            
            VStack{
                    
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(title)
                    .font(.customfont(.regular, fontSize: 14))
                    
                    .foregroundColor(.placeholder)
            }
            
        })
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    IconButton()
}
