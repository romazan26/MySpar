//
//  ContentView.swift
//  MySpar
//
//  Created by Роман on 01.02.2024.
//

import SwiftUI

struct ProductCardView: View {
    var body: some View {
        ScrollView {
            
            VStack {
                HStack {
                    Image(systemName: "arrow.left")
                    Spacer()
                    Image(systemName: "doc.richtext")
                    Image(systemName: "square.and.arrow.up")
                    Image(systemName: "heart")
                }.foregroundColor(.green)
                    .padding()
            }
            
            Divider()
            
            HStack {
                Text("Цена по карте")
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.green.cornerRadius(5))
                Spacer()
            }.padding()
            
            Image("teaImage")
                .resizable()
                .frame(width: 250, height: 250)
                .offset(x: -30)
            
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Text("4.1").font(.title2)
                Text("| 19 отзывов")
                Spacer()
                ZStack(content: {
                    Text("-5%")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.red.cornerRadius(13))
                })
            }.padding()
            
            Text("Добавка Липа к чаю 200 г")
                .font(.largeTitle)
            
            HStack{
                Image("flag")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Испания, Риоха")
                Spacer()
            }.padding()
            
            HStack{
                Text("Описание").font(.headline)
                Spacer()
            }.padding()
            
            Text("Флавоноиды липового цветы обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                .padding()
                .multilineTextAlignment(.leading)
            
            HStack{
                Text("Основные характеристики").font(.headline)
                Spacer()
            }.padding()
            
            
        }
    }
}

#Preview {
    ProductCardView()
}
