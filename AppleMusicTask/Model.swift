//
//  Model.swift
//  AppleMusicTask
//
//  Created by admin on 29.04.2023.
//

import Foundation
import SwiftUI

struct Model: Identifiable, Hashable {
    let id: String
    let image: String
    let title: String
    let isSelected: Bool
    
    init(id: String = UUID().uuidString, image: String, title: String, isSelected: Bool) {
        self.id = id
        self.image = image
        self.title = title
        self.isSelected = isSelected
    }
    
    func updateCompletion() -> Model {
        Model(id: id, image: image, title: title, isSelected: !isSelected)
    }
}

final class ListModel: ObservableObject {
    
    @Published var dataList: [Model] = [ Model(image: "music.note.list", title: "Плейлисты", isSelected: false),
                                         Model(image: "square.stack", title: "Альбомы", isSelected: false),
                                         Model(image: "music.note", title: "Песни", isSelected: false),
                                         Model(image: "music.note.tv", title: "Видеоклипы", isSelected: false),
                                         Model(image: "music.mic", title: "Артисты", isSelected: false),
                                         Model(image: "guitars", title: "Жанры", isSelected: false),
                                         Model(image: "music.quarternote.3", title: "Авторы", isSelected: false),
                                         Model(image: "tv", title: "Телешоу и фильмы", isSelected: false),
                                         Model(image: "person.2.crop.square.stack", title: "Сборники", isSelected: false),
                                         Model(image: "arrow.down.circle", title: "Загружено", isSelected: false),
                                         Model(image: "music.note.house", title: "Домашняя коллекция", isSelected: false)]
    
    func move(from source: IndexSet, to destination: Int) {
        dataList.move(fromOffsets: source, toOffset: destination)
    }
    
    func updateList(model: Model) {
        if let index = dataList.firstIndex(where: { $0.id == model.id }) {
            dataList[index] = model.updateCompletion()
        }
    }
}


