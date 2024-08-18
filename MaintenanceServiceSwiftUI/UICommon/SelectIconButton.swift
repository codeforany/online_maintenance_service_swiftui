//
//  SelectIconButton.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 17/08/24.
//

import SwiftUI

struct SelectIconButton: View {
    
    @State var icon = ""
    @State var title = ""
    @State var subtitle = ""
    var isSelect: Bool = false
    var didSelect: ( ()->() )?
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            Image( isSelect ? "select_radio" : "unselect_radio")
                .resizable()
                .scaledToFit()
                .frame( width: 20 ,height: 20)
            
            Spacer()
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(height: 80, alignment: .center)
                .maxCenter
            Spacer()
            
            Text(title)
                .font(.customfont(.bold, fontSize: 20))
                .maxCenter
                .foregroundColor(.primaryApp)
            
            Text(subtitle)
                .font(.customfont(.bold, fontSize: 20))
                .maxCenter
                .foregroundColor(.primaryText)
            Spacer()
            
        }
        .all15
        .maxLeft
        .frame(height: .widthPer(per: 0.6))
        .background( Color.white )
        .cornerRadius(20)
        .shadow(radius: isSelect ? 2 : 0 )
        .onTapGesture {
            didSelect?()
        }
    }
}

#Preview {
    SelectIconButton(icon: "1", title: "Business", subtitle: "Organisation", isSelect: true)
}
