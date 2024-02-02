//
//  StartView.swift
//  MySpar
//
//  Created by Роман on 02.02.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
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
    }
}

#Preview {
    StartView()
}
