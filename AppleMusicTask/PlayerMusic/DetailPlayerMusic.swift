//
//  DetailPlayerMusic.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct DetailPlayerMusic: View {
    var body: some View {
        ZStack {
            LinearGradient(colors:
                            [.green, Color(cgColor: .init(gray: 0.7, alpha: 0.6))],
                           startPoint: .leading,
                           endPoint: .bottom)
            .ignoresSafeArea(.all)
            
            VStack {
                Image("image9")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 1.5,
                           height: UIScreen.main.bounds.width / 1.5)
                    .cornerRadius(10)
                    .shadow(radius: 20)
                    .padding(.bottom, 50)
                
                NameMusic()
                PlayerLine()
                ButtonPlayer()
                VolumeView()
                HelpMenu()
            }
        }
    }
}

struct DetailPlayerMusic_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlayerMusic()
    }
}
