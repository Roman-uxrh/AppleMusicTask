//
//  PlayerLine.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct PlayerLine: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color(cgColor: .init(gray: 0.8, alpha: 1)))
                    .cornerRadius(10)
                
                HStack {
                    Circle()
                        .frame(width: 9)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
            }
            
            HStack {
                Text("0:00")
                    .font(.system(size: 12))
                    .foregroundColor(Color(cgColor: .init(gray: 0.8, alpha: 1)))
                
                Spacer()
                
                Text("-4:45")
                    .font(.system(size: 12))
                    .foregroundColor(Color(cgColor: .init(gray: 0.8, alpha: 1)))
            }
        }
        .padding()
    }
}

struct PlayerLine_Previews: PreviewProvider {
    static var previews: some View {
        PlayerLine()
    }
}
