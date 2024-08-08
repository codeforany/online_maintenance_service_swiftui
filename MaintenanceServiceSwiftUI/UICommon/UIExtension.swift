//
//  UIExtension.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 06/08/24.
//

import SwiftUI

enum Roboto: String {
    case regular = "Roboto-Regualr"
    case bold = "Roboto-Bold"
}

extension Font {
    static func customfont(_ font: Roboto, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}

extension CGFloat {
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }
    
    static func widthPer(per:Double) -> Double {
        return screenWidth * per
        //375 * 0.5 // 50% return width
    }
    
    static func heightPer(per:Double) -> Double {
        return screenHeight * per
        //375 * 0.5 // 50% return width
    }
    
    
    static var topInsets: Double {
        if  let keyWindow = (UIApplication.shared.connectedScenes.first as? UIWindowScene )?.windows.first {
            return keyWindow.safeAreaInsets.top
        }
        return 0.0
    }
    
    
    static var bottomInsets: Double {
        if  let keyWindow = (UIApplication.shared.connectedScenes.first as? UIWindowScene )?.windows.first {
            return keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
    static var horizontalInsets: Double {
        if  let keyWindow = (UIApplication.shared.connectedScenes.first as? UIWindowScene )?.windows.first {
            return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        }
        return 0.0
    }
    
    static var verticalInsets: Double {
        if  let keyWindow = (UIApplication.shared.connectedScenes.first as? UIWindowScene )?.windows.first {
            return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corner: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corner: corner))
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corner: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii:  CGSize(width: radius, height: radius) )
        
        return Path(path.cgPath)
    }
    
}

extension Color {
    
    static var primaryApp: Color {
        return Color(hex: "ffd700")
    }
    
    static var secondaryApp: Color {
        return Color(hex: "022C43")
    }
    
    static var primaryText: Color {
        return Color(hex: "022C43")
    }
    
    static var secondaryText: Color {
        return Color(hex: "878787")
    }
    
    static var title: Color {
        return Color(hex: "312C66")
    }
    
    static var placeholder: Color {
        return Color(hex: "a4a4a4")
    }
    
    static var chatTextBG: Color {
        return Color(hex: "115173")
    }
    
    static var chatTextBG2: Color {
        return Color(hex: "F4F6FF")
    }
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB(12 -bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
}

extension View {
    
    func bgNavLink(content: some View, isActive: Binding<Bool> ) -> some View {
        return self.background( NavigationLink(destination: content, isActive: isActive, label: {
            EmptyView()
        }) )
    }
    
    var navHide: some View {
        return navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
            .ignoresSafeArea()
    }
    
    var navHideWithoutIgnoresSafe: some View {
        return navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
    }
    
    
    var maxCenter: some View {
        return frame(maxWidth: .infinity, alignment: .center)
    }
    
    var maxLeft: some View {
        return frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var maxRight: some View {
        return frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    var top8: some View {
        return padding(.top, 8)
    }
    
    var top15: some View {
        return padding(.top, 15)
    }
    
    var bottom8: some View {
        return padding(.bottom, 8)
    }
    
    var bottom15: some View {
        return padding(.bottom, 15)
    }
    
    var horizontal8: some View {
        return padding(.horizontal, 8)
    }
    
    var horizontal15: some View {
        return padding(.horizontal, 15)
    }
    
    var vertical8: some View {
        return padding(.vertical, 8)
    }
    
    var vertical15: some View {
        return padding(.vertical, 15)
    }
    
    var all15: some View {
        return padding( 15)
    }
    
    var topWithSafe: some View {
        return padding( .top, .topInsets + 2)
    }
    
    var bottomWithSafe: some View {
        return padding(.bottom, .bottomInsets + 8)
    }

}
