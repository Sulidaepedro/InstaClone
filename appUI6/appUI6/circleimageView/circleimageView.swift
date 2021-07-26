//
//  circleimageView.swift
//  appUI6
//
//  Created by Giuseppe Grammatico on 28/06/2021.
//

import SwiftUI


struct circleimageView: View {
    
    let image: UIImage
    let size: CGFloat
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .clipped()
            .clipShape(Circle())
        
    }
}

struct circleimageView_Previews: PreviewProvider {
    static var previews: some View {
        circleimageView(image: #imageLiteral(resourceName: "author1"), size: 60)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
