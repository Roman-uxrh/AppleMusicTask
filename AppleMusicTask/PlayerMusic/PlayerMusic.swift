//
//  PlayerMusic.swift
//  AppleMusicTask
//
//  Created by admin on 06.05.2023.
//

import SwiftUI

struct PlayerMusic: View {
    
    @State var showModalView = false
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(cgColor: .init(gray: 0.94, alpha: 1)))
                .frame(height: 65)
                .onTapGesture(count: 2) {
                    self.showModalView = true
                }
            
            HStack {
                Image("image9")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(7)
                    .padding([.trailing, .leading], 5)
                    .shadow(radius: 10)
                
                Text("COMPLEXITIS")
                    .bold()
                
                Spacer()
                
                Button {
                    print("Нажата кнопка пауза")
                } label: {
                    Image(systemName: "pause.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .padding([.trailing, .leading], 15)
                        .foregroundColor(.black)
                }
                 
                Button {
                    print("Нажата кнопка пуск")
                } label: {
                    Image(systemName: "forward.fill")
                        .resizable()
                        .frame(width: 30, height: 18)
                        .padding([.trailing, .leading], 10)
                        .foregroundColor(.black)
                }
            }
        }
        .sheet(isPresented: $showModalView) {
            DetailPlayerMusic()
        }
    }
}

struct PlayerMusic_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMusic()
    }
}
