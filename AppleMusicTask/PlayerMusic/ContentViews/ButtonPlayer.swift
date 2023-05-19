//
//  ButtonPlayer.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct ButtonPlayer: View {
    var body: some View {
        HStack {
            Button {
                print("Нажата кнопка назад")
            } label: {
                Image(systemName: "backward.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }
            .padding(.trailing, 45)
            
            Button {
                print("Нажата кнопка пуск")
            } label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
            }
            .padding(.trailing, 45)
            
            Button {
                print("Нажата кнопка вперед")
            } label: {
                Image(systemName: "forward.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }

        }
    }
}

struct ButtonPlayer_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPlayer()
    }
}
