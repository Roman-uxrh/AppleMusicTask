//
//  CategoryView.swift
//  AppleMusicTask
//
//  Created by admin on 18.05.2023.
//

import SwiftUI

struct CategoryView: View {
    
    let model = ModelDetailView()
    
    var body: some View {
        Image(model.image.randomElement() ?? "")
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width / 2.15,
                   height: UIScreen.main.bounds.width / 2.15)
            .cornerRadius(11)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
