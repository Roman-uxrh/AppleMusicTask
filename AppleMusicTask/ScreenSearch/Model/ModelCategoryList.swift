//
//  SearchCategory.swift
//  AppleMusicTask
//
//  Created by admin on 18.05.2023.
//

import Foundation

struct ModelCategoryList: Identifiable, Hashable {
    let id: String
    let image: String
    let title: String
    
    init(id: String = UUID().uuidString,
         image: String,
         title: String)
    {
        self.id = id
        self.image = image
        self.title = title
    }
}

final class SearchCategoryList {
    let dataList: [ModelCategoryList] = [ModelCategoryList(image: "image10",
                                                           title: "Зимнее время"),
                                         ModelCategoryList(image: "image11",
                                                           title: "Поп на русском"),
                                         ModelCategoryList(image: "image12",
                                                           title: "Поп на татарском"),
                                         ModelCategoryList(image: "image13",
                                                           title: "Сказочное бали"),
                                         ModelCategoryList(image: "image14",
                                                           title: "Жуткое звучание"),
                                         ModelCategoryList(image: "image15",
                                                           title: "Хип-хоп на русском"),
                                         ModelCategoryList(image: "image16",
                                                           title: "Голубые дали"),
                                         ModelCategoryList(image: "image17",
                                                           title: "Почему я лесбиянка"),
                                         ModelCategoryList(image: "image18",
                                                           title: "Путь в никуда"),
                                         ModelCategoryList(image: "image19",
                                                           title: "Пенсия?")
                                    ]
}
