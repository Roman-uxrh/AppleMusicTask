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
                Button(action: {
                    isEditing.toggle()
                    editMode = isEditing ? .active : .inactive
                }, label: {
                    Text(isEditing ? "Готово" : "Править")
                })
                .foregroundColor(.orange)
                .padding(.trailing, 20)
                .padding(.bottom, 20)
            }
            .environment(\.editMode, $editMode)
        }
    }
}


struct FrontView: View {
    var body: some View {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
