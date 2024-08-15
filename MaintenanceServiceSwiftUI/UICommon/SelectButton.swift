//
//  SelectButton.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 14/08/24.
//

import SwiftUI

struct SelectButton: View {
    
    @State var icon: String = ""
    @State var title: String = ""
    var isSelect: Bool = false
    var didSelect: (()->())?
    
    var body: some View {
        Button(action: {
            didSelect?()
        }, label: {
            VStack{
                
                ZStack{
                     Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor( isSelect ? .primaryText : .primaryApp)
                }
                .frame(width: 60, height: 60, alignment: .center)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke( Color.primaryApp   ,  lineWidth: 2 )
                        .background(  isSelect ? Color.primaryApp : Color.clear )
                )
                .cornerRadius(30)
                
                Text( title )
                    .font(.customfont( isSelect ? .bold : .regular, fontSize: 14))
                    .foregroundColor( isSelect ? .primaryText : .placeholder)
                
                
            }
        })
    }
}

#Preview {
    SelectButton(icon: "hygiene", title: "Hygiene", isSelect: false)
}
