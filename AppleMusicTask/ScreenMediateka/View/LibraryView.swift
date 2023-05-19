//
//  LibraryView.swift
//  AppleMusicTask
//
//  Created by admin on 28.04.2023.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var isEditing = false
    @State private var editMode: EditMode = .inactive
    
    var body: some View {
        NavigationView {
            ZStack {
                switch isEditing {
                    case true:
                        ListView()
                    case false:
                        FrontView()
                }
            }
            .navigationTitle("Медиатека")
            .toolbar {
                ToolBarView(isEditing: $isEditing, editMode: $editMode)
            }
            .environment(\.editMode, $editMode)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
