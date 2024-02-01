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
            
            HStack{
                VStack(alignment: .leading, spacing: 20){
                    Text("Производство")
                    Text("Энергитическая ценность, ккал/100г")
                    Text("Жиры/100г")
                    Text("Белки/100г")
                    Text("Угелеводы/100г")
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 20){
                    Text("Россия, Красндарский край")
                    Text("25 ккал, 105 кДж")
                    Text("0,1г")
                    Text("1,3г")
                    Text("3,3г")
                }
            }.padding()
            
            HStack {
                Text("Все характеристики")
                    .foregroundColor(.green)
                    .font(.headline.bold())
                Spacer()
            }.padding()
            
            HStack{
                Text("Отзывы").font(.title.bold())
                Spacer()
                Text("Все 152")
                    .foregroundColor(.green)
                    .font(.headline)
            }.padding()
            
            TabView {
                Group {
                    VStack(alignment: .leading, spacing: 10){
                        Text("Александр В.")
                            .font(.title.bold())
                        Text("7 мая 2021")
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")
                        }.foregroundColor(.yellow)
                        Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                    }
                }.frame(width: 250, height: 150)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                
                Group {
                    VStack(alignment: .leading, spacing: 10){
                        Text("Александр В.")
                            .font(.title.bold())
                        Text("7 мая 2021")
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")
                        }.foregroundColor(.yellow)
                        Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                    }
                }.frame(width: 250, height: 150)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                    
                
                
            }.tabViewStyle(PageTabViewStyle())
                .frame(width: 343, height: 257)
            Button {
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .stroke()
                    
                    Text("Оставить отзыв").font(.title3.bold())
                        .padding(7)
                }
                .foregroundColor(.green)
                .padding()
            }
            VStack {
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .foregroundColor(.gray.opacity(0.2))
                    .frame( height: 50)
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .foregroundColor(.white)
                    .frame(width: 190, height: 46)
                    .offset(x: -83)
                }
            }.padding()
        }
    }
}

#Preview {
    ProductCardView()
}
