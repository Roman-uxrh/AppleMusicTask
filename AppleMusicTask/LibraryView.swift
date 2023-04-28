//
//  LibraryView.swift
//  AppleMusicTask
//
//  Created by admin on 28.04.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Ищете свою музыку?")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Text("Здесь появится купленная Вами в iTunes Store музыка.")
                        .font(.system(size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(cgColor: .init(gray: 0.4, alpha: 0.8)))
                }
                .frame(width: 280)
                .navigationTitle("Медиатека")
                .toolbar {
                    Text("Править")
                        .foregroundColor(.orange)
                        .padding(.trailing, 20)
                        .padding(.bottom, 80)
                }
                
                Rectangle()
                    .foregroundColor(Color(cgColor: .init(gray: 0.94, alpha: 1)))
                    .frame(height: 60)
                    .offset(y: 270)

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
                .offset(y: 270)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
