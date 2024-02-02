//
//  ContentView.swift
//  MySpar
//
//  Created by Роман on 01.02.2024.
//

import SwiftUI

struct ProductCardView: View {
    enum tType: String, CaseIterable, Identifiable {
        case kg
        case sht
        
        var id: Self {
            self
        }
        
        var title: String {
            switch self {
                
            case .kg:
                return "шт"
            case .sht:
                return "кг"
            }
        }
    }
    
    @State private var segment: tType = .kg
    
    var body: some View {
        ScrollView {
            
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
            
            Picker("", selection: $segment) {
                ForEach(tType.allCases) { category in
                    Text(category.title).tag(category)
                }
            }.pickerStyle(.segmented)
            
            HStack{
                VStack{
                    Text("55.9 р/кг")
                        .font(.title2.bold())
                    Text("~199.0~")
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                    HStack{
                        Image(systemName: "minus")
                        VStack{
                            Text("1 шт").bold()
                            Text("120,0р").opacity(0.8)
                        }
                        Image(systemName: "plus")
                    }.foregroundColor(.white)
                }.frame(width: 170)
            }.padding()
            
        }
        
    }
    
}

#Preview {
    ProductCardView()
}
