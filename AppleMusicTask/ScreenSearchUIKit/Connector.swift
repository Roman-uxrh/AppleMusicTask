//
//  Connector.swift
//  AppleMusicTask
//
//  Created by admin on 09.06.2023.
//

import SwiftUI
import UIKit

struct Connector: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        SearchViewUIKit()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // заглушка
    }
}
