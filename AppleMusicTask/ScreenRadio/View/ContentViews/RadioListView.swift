//
//  RadioListView.swift
//  AppleMusicTask
//
//  Created by admin on 12.05.2023.
//

import SwiftUI

struct RadioListView: View {
    
    let model: ModelRadioList
    
    var body: some View {
        VStack {
            HStack {
                Image(model.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 110, height: 110)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text(model.genre)
                        .font(.system(size: 18))
                    
                    Text(model.title)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                .padding(.leading, 15)
                
                Spacer()
            }
            .padding()
            
            Divider()
                .padding(.top, -14)
        }
    }
}

struct RadioListView_Previews: PreviewProvider {
    static var previews: some View {
        RadioListView(model: ModelRadioList(image: "image1",
                                            genre: "NameMusic",
                                            title: "TitleMusic"))
    }
}
