//
//  FrontView.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

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

struct FrontView_Previews: PreviewProvider {
    static var previews: some View {
        FrontView()
    }
}
