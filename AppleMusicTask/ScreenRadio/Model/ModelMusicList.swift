//
//  ModelMusicList.swift
//  AppleMusicTask
//
//  Created by admin on 12.05.2023.
//

import Foundation
import SwiftUI

struct ModelMusicList: Identifiable, Hashable {
    var id: String
    var radio: String
    var music: String
    var category: String
    var image: String
    
    init(id: String = UUID().uuidString,
         radio: String,
         music: String,
         category: String,
         image: String)
    {
        self.id = id
        self.radio = radio
        self.music = music
        self.category = category
        self.image = image
    }
}

final class MusicList {
    var dataList: [ModelMusicList] = [ModelMusicList(radio: "Новый выпуск",
                                                     music: "Музыкальный базар с бастой",
                                                     category: "Новое шоу",
                                                     image: "image1"),
                                      
                                      ModelMusicList(radio: "Избранная радиостанция",
                                                     music: "Популярное",
                                                     category: "То, что слушают прямо сейчас",
                                                     image: "image2"),
                                      
                                      ModelMusicList(radio: "Избранная радиостанция",
                                                     music: "ХИП-ХОП",
                                                     category: "Идеальные биты и рифмы",
                                                     image: "image3"),
                                      
                                      ModelMusicList(radio: "Избранная радиостанция",
                                                     music: "Только поп-музыка",
                                                     category: "Все топ-хиты",
                                                     image: "image4"),
                                      
                                      ModelMusicList(radio: "Избранная радиостанция",
                                                     music: "Поп-музыка для тренировок",
                                                     category: "Вперед и с музыкой!",
                                                     image: "image5"),
                                      
                                      ModelMusicList(radio: "Избранная радиостанция",
                                                     music: "Электронная музыка",
                                                     category: "Пульт с лучшими треками!",
                                                     image: "image6"),
                                      
                                      ModelMusicList(radio: "Новая радиостанция",
                                                     music: "Классика рока",
                                                     category: "Гении гитарного звука",
                                                     image: "image7"),
                                      
                                      ModelMusicList(radio: "Избранная радиостанция",
                                                     music: "Танцевальная музыка",
                                                     category: "Современные и будущие хиты",
                                                     image: "image8"),]
}
