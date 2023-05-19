//
//  ToolBarView.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct ToolBarView: View {
    
    @Binding var isEditing: Bool
    @Binding var editMode: EditMode
    
    var body: some View {
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
}

//struct ToolBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        ToolBarView()
//    }
//}
