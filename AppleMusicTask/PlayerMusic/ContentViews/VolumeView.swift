//
//  VolumeView.swift
//  AppleMusicTask
//
//  Created by admin on 19.05.2023.
//

import SwiftUI

struct VolumeView: View {
    
    @State var point: Float = 20
    
    var body: some View {
        HStack {
            Image(systemName: "speaker.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 10, height: 10)
                .foregroundColor(Color(cgColor: .init(gray: 0.35, alpha: 1)))
            
            Slider(value: $point)
                .tint(Color(cgColor: .init(gray: 0.7, alpha: 1)))
            
            Image(systemName: "speaker.wave.3.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 15, height: 15)
                .foregroundColor(Color(cgColor: .init(gray: 0.35, alpha: 1)))
//                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeView()
    }
}
