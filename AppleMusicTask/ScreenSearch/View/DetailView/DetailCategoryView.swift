//
//  DetailCategoryView.swift
//  AppleMusicTask
//
//  Created by admin on 18.05.2023.
//

import SwiftUI

struct DetailCategoryView: View {
    
    let rows = [GridItem()]
    let model = ModelDetailView()
    let modelTitle: ModelCategoryList
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(1..<6) { item in
                            PlaylistView()
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
                            CategoryView()
                        }
                    }
                }
                .padding(.top, -90)
                Spacer()
            }
            .navigationTitle(modelTitle.title)
            .toolbar {
                Button {
                    print("Нажата кнопка опции")
                } label: {
                    Image(systemName: "list.bullet.circle.fill")
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
