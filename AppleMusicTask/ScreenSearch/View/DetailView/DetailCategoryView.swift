//
//  DetailCategoryView.swift
//  AppleMusicTask
//
//  Created by admin on 18.05.2023.
//

import SwiftUI

struct DetailCategoryView: View {
    
    @State var model = ModelDetailView()
    
    let rows = [GridItem()]
    let modelTitle: ModelCategoryList
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(1..<6) { item in
                            PlaylistView(model: $model)
                        }
                    }
                }
                .frame(height: 350)
                
                HStack {
                    Text(model.namePlaylist.randomElement() ?? "")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                    Spacer()
                    Button {
                        print("Нажата кнопка см.все")
                    } label: {
                        Text("См. все")
                            .font(.system(size: 14))
                            .foregroundColor(.red)
                    }
                }
                .padding()
                .padding(.top, -16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(1..<7) { item in
                            CategoryView(model: $model)
                        }
                    }
                }
                .padding(.top, -15)
                Spacer()
            }
            
            .navigationTitle(modelTitle.title)
            .toolbar {
                Button {
                    print("Нажата кнопка опции")
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .tint(.red)
                }
            }
        }
    }
}

struct DetailCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCategoryView(modelTitle: ModelCategoryList(image: "image1",
                                                         title: "Hello World"))
    }
}
