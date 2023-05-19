//
//  HelpMenu.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct HelpMenu: View {
    var body: some View {
        HStack {
            Button {
                print("нажата первая кнопка")
            } label: {
                Image(systemName: "quote.bubble")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(cgColor: .init(gray: 0.4, alpha: 1)))
                    .bold()
            }
            .padding(.trailing, 50)

            Button {
                print("нажата вторая кнопка")
            } label: {
                Image(systemName: "antenna.radiowaves.left.and.right.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(cgColor: .init(gray: 0.4, alpha: 1)))
                    .bold()
            }
            .padding(.trailing, 40)
            
            Button {
                print("нажата третья кнопка")
            } label: {
                ZStack {
                    Image(systemName: "list.bullet")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                        .foregroundColor(Color(cgColor: .init(gray: 0.4, alpha: 1)))
                        .bold()
                    Image(systemName: "shuffle.circle.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 25, height: 25)
                        .padding(.leading, 22)
                        .padding(.bottom, 30)
                }
            }
        }
    }
}

struct HelpMenu_Previews: PreviewProvider {
    static var previews: some View {
        HelpMenu()
    }
}
