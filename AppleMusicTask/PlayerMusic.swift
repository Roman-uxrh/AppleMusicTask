//
//  PlayerMusic.swift
//  AppleMusicTask
//
//  Created by admin on 06.05.2023.
//

import SwiftUI

struct PlayerMusic: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(cgColor: .init(gray: 0.94, alpha: 1)))
                .frame(height: 65)
            
            HStack {
                Image("Image5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(7)
                    .padding([.trailing, .leading], 5)
                    .shadow(radius: 10)
                Text("COMPLEXITIS")
                    .bold()
                Spacer()
                Image(systemName: "pause.fill")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .padding([.trailing, .leading], 15)
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: 30, height: 18)
                    .padding([.trailing, .leading], 10)
            }
        }
    }
}

struct PlayerMusic_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMusic()
    }
}
