//
//  RadioView.swift
//  AppleMusicTask
//
//  Created by admin on 12.05.2023.
//

import SwiftUI

struct RadioView: View {
    
    let musicList = MusicList()
    
    let radioList = RadioList()
    
    let rows: [GridItem] = [GridItem()]
    
    let columns: [GridItem] = [GridItem()]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(musicList.dataList, id: \.self) { model in
                            MusicListView(model: model)
                        }
                        .padding(.leading, 10)
                    }
                }
                
                LineView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        ForEach(radioList.dataList, id: \.self) { model in
                            RadioListView(model: model)
                                .padding(.top, -20)
                        }
                    }
                }
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
