//
//  BackgroundCleanerView.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 08/08/24.
//

import SwiftUI

struct BackgroundCleanerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
}

#Preview {
    BackgroundCleanerView()
}
