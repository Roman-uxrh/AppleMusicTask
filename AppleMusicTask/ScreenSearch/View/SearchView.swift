//
//  SearchView.swift
//  AppleMusicTask
//
//  Created by admin on 17.05.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var textSearch: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LineSearchView(textSearch: $textSearch)
                VerticalScrollView()
                    
            }
            .navigationTitle("Поиск")
            .padding()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
