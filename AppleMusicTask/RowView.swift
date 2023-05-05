//
//  RowView.swift
//  AppleMusicTask
//
//  Created by admin on 06.05.2023.
//

import SwiftUI

struct RowView: View {
    
    var model: Model
    
    var body: some View {
        HStack {
            Image(systemName: model.isSelected ? "checkmark.circle.fill" : "circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(model.isSelected ? Color.red : Color.gray)
                .frame(width: 20, height: 20)
            Image(systemName: model.image)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.red)
                .frame(width: 22, height: 22)
                .padding(.horizontal, 10)
            Text(model.title)
            Spacer()
        }
        .padding(.leading, 10)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(model: Model(image: "flame.fill",
                             title: "Hello",
                             isSelected: true))
    }
}
