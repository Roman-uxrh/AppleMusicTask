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
                .scaledToFit()
                .cornerRadius(8)
                .frame(width: 320)
            
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
                                            image: "image1"))
    }
}
