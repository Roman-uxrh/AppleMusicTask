//
//  Model.swift
//  AppleMusicTask
//
//  Created by admin on 29.04.2023.
//

import Foundation
import SwiftUI

struct ModelList: Identifiable, Hashable {
    let id: String
    let image: String
    let title: String
    let isSelected: Bool
    
    init(id: String = UUID().uuidString,
         image: String,
         title: String,
         isSelected: Bool)
    {
        self.id = id
        self.image = image
        self.title = title
        self.isSelected = isSelected
    }
    
    func updateCompletion() -> ModelList {
        ModelList(id: id, image: image, title: title, isSelected: !isSelected)
    }
}

final class ListMusic: ObservableObject {
    
    @Published var dataList: [ModelList] = [ ModelList(image: "music.note.list", title: "Плейлисты", isSelected: false),
                                         ModelList(image: "square.stack", title: "Альбомы", isSelected: false),
                                         ModelList(image: "music.note", title: "Песни", isSelected: false),
                                         ModelList(image: "music.note.tv", title: "Видеоклипы", isSelected: false),
                                         ModelList(image: "music.mic", title: "Артисты", isSelected: false),
                                         ModelList(image: "guitars", title: "Жанры", isSelected: false),
                                         ModelList(image: "music.quarternote.3", title: "Авторы", isSelected: false),
                                         ModelList(image: "tv", title: "Телешоу и фильмы", isSelected: false),
                                         ModelList(image: "person.2.crop.square.stack", title: "Сборники", isSelected: false),
                                         ModelList(image: "arrow.down.circle", title: "Загружено", isSelected: false),
                                         ModelList(image: "music.note.house", title: "Домашняя коллекция", isSelected: false)]
    
    func move(from source: IndexSet, to destination: Int) {
        dataList.move(fromOffsets: source, toOffset: destination)
    }
    
    func updateList(model: ModelList) {
        if let index = dataList.firstIndex(where: { $0.id == model.id }) {
            dataList[index] = model.updateCompletion()
        }
    }
}


