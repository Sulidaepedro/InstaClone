//
//  CameraViewController.swift
//  appUI6
//
//  Created by Giuseppe Grammatico on 09/07/2021.
//




import SwiftUI

struct CameraViewController: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                if selectedImage != nil {
                    Image(uiImage: selectedImage!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                } else {
                    Image(systemName: "camera.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                }
                
                HStack{
                Button("Camera") {
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                }
                .accentColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(100)
                    Spacer()
                Button(" Album ") {
                    self.sourceType = .photoLibrary
                    self.isImagePickerDisplay.toggle()
                }
                .accentColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(100)
                }
                .font(.title)
                .padding(60)
            }
            .navigationBarTitle("")
            .sheet(isPresented: self.$isImagePickerDisplay) {
                ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
            }
            
        }
    }
}

struct CameraViewController_Previews: PreviewProvider {
    static var previews: some View {
        CameraViewController()
            
    }
}
