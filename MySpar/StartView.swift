//
//  StartView.swift
//  MySpar
//
//  Created by Роман on 02.02.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            TabView {
                ProductCardView()
                .tabItem {
                 Label("Главная", systemImage: "tree")
                }
                Text("Каталог")
                .tabItem {
                 Label("Каталог", systemImage: "circle.grid.2x2.fill")
                }
                Text("Корзина")
                .tabItem {
                 Label("Корзина", systemImage: "cart")
                }
                Text("Профиль")
                .tabItem {
                 Label("Профиль", systemImage: "person.crop.circle")
                }
            }
            .toolbar(content: {
                ToolbarItem() {
                    HStack {
                        Image(systemName: "doc.richtext")
                        Image(systemName: "square.and.arrow.up")
                        Image(systemName: "heart")
                    }.foregroundColor(.green)
                        .padding()
                }
            })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "arrow.left").foregroundColor(.green)
                }
            }
        }
    }
}

#Preview {
    StartView()
}
