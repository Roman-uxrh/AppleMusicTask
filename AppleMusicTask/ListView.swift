//
//  ListView.swift
//  AppleMusicTask
//
//  Created by admin on 29.04.2023.
//

import SwiftUI



struct ListView: View {
    
    @ObservedObject var listModel = ListModel()
    
    var body: some View {
        List {
            ForEach(listModel.dataList, id: \.self) { model in
                RowView(model: model)
                    .onTapGesture {
                        listModel.updateList(model: model)
                    }
            }
            .onMove(perform: listModel.move)
        }
        .listStyle(.inset)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
