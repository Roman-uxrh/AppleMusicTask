//
//  RadioView.swift
//  AppleMusicTask
//
//  Created by admin on 12.05.2023.
//

import SwiftUI

struct RadioView: View {
    
    let musicList = MusicList()
    
    let rows: [GridItem] = [GridItem(.fixed(200))]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(musicList.dataList, id: \.self) { model in
                            MusicListView(model: model)
                        }
                        .frame(height: 340)
                        .padding(.leading, 10)
                    }
                }
                
//                ScrollView(.vertical, showsIndicators: false) {
//                    LazyVGrid(columns: <#T##[GridItem]#>) { 
//                        ForEach(
//                    }
//                }
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
