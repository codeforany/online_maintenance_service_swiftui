//
//  CountryPickerUI.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 07/08/24.
//

import SwiftUI
import CountryPicker

struct CountryPickerUI: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = CountryPickerViewController
    let countryPicker = CountryPickerViewController()
    @Binding var country: Country?
    
    
    func makeUIViewController(context: Context) -> CountryPickerViewController {
        countryPicker.selectedCountry = "IN"
        countryPicker.delegate = context.coordinator
        
        return countryPicker
    }
    
    func updateUIViewController(_ uiViewController: CountryPickerViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, CountryPickerDelegate {
        var parent: CountryPickerUI
        init(parent: CountryPickerUI) {
            self.parent = parent
        }
        
        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
    }
    
}
