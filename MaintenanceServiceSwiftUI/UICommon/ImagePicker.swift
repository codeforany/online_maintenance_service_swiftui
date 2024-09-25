//
//  ImagePicker.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 23/08/24.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    
    
    
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    var action: ((UIImage)->())?
    
    @Environment(\.presentationMode) private var presentationMode
    
    func makeUIViewController(context: Context) -> some UIImagePickerController {
        
        
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing  = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        var parent: ImagePicker
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.action?(image)
            }
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

#Preview {
    ImagePicker()
}
