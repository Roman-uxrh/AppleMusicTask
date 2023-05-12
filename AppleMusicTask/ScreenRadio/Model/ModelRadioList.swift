//
//  ModelRadioList.swift
//  AppleMusicTask
//
//  Created by admin on 12.05.2023.
//

import Foundation

struct ModelRadioList: Identifiable, Hashable {
    let id: String
    let image: String
    let genre: String
    let title: String
    
    init(id: String = UUID().uuidString,
         image: String,
         genre: String,
         title: String)
    {
        self.id = id
        self.image = image
        self.genre = genre
        self.title = title
    }
}

final class RadioList {
    let dataList: [ModelRadioList] = [ModelRadioList(image: "image3",
                                                     genre: "Музыка для расслабления",
                                                     title: "Электронная медитация"),
                                      ModelRadioList(image: "image4",
                                                     genre: "Популярное",
                                                     title: "То, что слушают прямо сейчас"),
                                      ModelRadioList(image: "image5",
                                                     genre: "Классика электронной музыки",
                                                     title: "Как рождался саунд будущего"),
                                      ModelRadioList(image: "image6",
                                                     genre: "Классика рока",
                                                     title: "Гении гитарного звука"),
                                      ModelRadioList(image: "image7",
                                                     genre: "Классика",
                                                     title: "Выдающиеся образы жанра"),
                                      ModelRadioList(image: "image8",
                                                     genre: "Хип-хоп",
                                                     title: "Идеальные биты и рифмыю")
                                    ]
}
