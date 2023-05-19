//
//  NameMusic.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct NameMusic: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("COMPLEXITIS")
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.system(size: 19))
                Text("Мария Захарова")
                    .foregroundColor(Color(cgColor: .init(gray: 0.85, alpha: 1)))
                    .font(.system(size: 19))
                    .bold()
            }
            
            Spacer()
            
            Button {
                print("нажата кнопка '3 точки' ")
            } label: {
                ZStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .tint(Color(cgColor: .init(gray: 0.4, alpha: 1)))
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .tint(.white)
                }
            }
        }
        .padding(27)
    }
}

struct NameMusic_Previews: PreviewProvider {
    static var previews: some View {
        NameMusic()
    }
}
