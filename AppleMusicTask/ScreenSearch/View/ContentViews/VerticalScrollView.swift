//
//  VerticalScrollView.swift
//  AppleMusicTask
//
//  Created by admin on 18.05.2023.
//

import SwiftUI

struct VerticalScrollView: View {
    
    let columns = [GridItem(.adaptive(minimum: UIScreen.main.bounds.width / 2.3))]
    
    let searchCategoryList = SearchCategoryList()
    
    var body: some View {
        ScrollView(.vertical) {
            HStack {
                Text("Поиск по категориям")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                
                Spacer()
            }
            .padding(.bottom, -4)
            
            LazyVGrid(columns: columns) {
                ForEach(searchCategoryList.dataList) { model in
                    RowVerticalView(model: model)
                }
            }
        }
    }
}

struct VerticalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalScrollView()
    }
}
