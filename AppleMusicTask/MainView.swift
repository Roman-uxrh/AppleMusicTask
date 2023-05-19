//
//  MainView.swift
//  AppleMusicTask
//
//  Created by admin on 28.04.2023.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        ZStack {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.house")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .tint(.red)
            
            PlayerMusic()
                .offset(y: 298)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
