//
//  ListView.swift
//  AppleMusicTask
//
//  Created by admin on 29.04.2023.
//

import SwiftUI



struct ListView: View {
    
    @ObservedObject var listMusic = ListMusic()
    
    var body: some View {
        List {
            ForEach(listMusic.dataList, id: \.self) { model in
                RowView(model: model)
                    .onTapGesture {
                        listMusic.updateList(model: model)
                    }
            }
            .onMove(perform: listMusic.move)
        }
        .listStyle(.inset)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
