//
//  TabButton.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 18/08/24.
//

import SwiftUI

struct TabButton: View {
    
    @State var icon: String = ""
    
    var isSelect: Bool = false
    var didSelect: (()->())?
    
    
    var body: some View {
        Button {
            didSelect?()
        } label: {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
        .frame(maxWidth: .infinity, alignment: .center )
        .frame(height: 50)
        .background( isSelect ?  Color.primaryApp : Color.white)
        .cornerRadius(25)
        .foregroundColor(isSelect ? Color.white : Color.primaryText )
        .shadow(radius: 1)
    }
}

#Preview {
    TabButton()
}
