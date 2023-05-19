//
//  LineView.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        HStack {
            Text("Станции")
                .font(.system(size: 25))
                .bold()
                .padding(.leading, 15)
            Spacer()
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
