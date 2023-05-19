//
//  MusicView.swift
//  AppleMusicTask
//
//  Created by admin on 12.05.2023.
//

import SwiftUI

struct MusicListView: View {
    
    var model: ModelMusicList
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
                .ignoresSafeArea()
            
            Spacer()
            
            Text(model.radio)
                .foregroundColor(.gray)
            
            Text(model.music)
                .bold()
            
            Text(model.category)
                .foregroundColor(.gray)
            
            Image(model.image)
                .resizable()
                .scaledToFill()
                .frame(width: (UIScreen.main.bounds.width) - 10,
                       height: UIScreen.main.bounds.width / 1.8)
                .cornerRadius(8)
            
            Spacer()
            
            Divider()
                .padding(.top, 8)
                .ignoresSafeArea()
        }
        .frame(height: 330)
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicListView(model: ModelMusicList(radio: "dddd",
                                            music: "ddddd",
                                            category: "ddddd",
                                            image: "image12"))
    }
}
