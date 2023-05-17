//
//  LineSearchView.swift
//  AppleMusicTask
//
//  Created by admin on 17.05.2023.
//

import SwiftUI

struct LineSearchView: View {
    
    @Binding var textSearch: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(Color(cgColor: .init(gray: 0.5, alpha: 1)))
                .frame(width: 20, height: 20)
                .padding(.leading, 10)
            TextField("Ваша медиатека", text: $textSearch)
                .font(.system(size: 18))
        }
        .frame(height: 40)
        .background(Color(cgColor: .init(gray: 0.85, alpha: 1)))
        .cornerRadius(10)
    }
}

//struct LineSearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        LineSearchView()
//    }
//}
