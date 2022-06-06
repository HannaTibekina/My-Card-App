//
//  ContentView.swift
//  My Card App
//
//  Created by Анна Тибекина on 27.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 1.00, green: 0.92, blue: 0.65).ignoresSafeArea()
            VStack {
                Image("ava").renderingMode(.original).resizable().aspectRatio(contentMode: .fill).padding(.top, 47.0).frame(width: 150.0, height: 150.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                Text("Hanna Tibekina")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text("IOS Developer")
                    .font(.title3)
                    .fontWeight(.light)
                    .padding()
                Divider()
                Card(image: "phone.fill", massege: "+380661707807")
                Card(image: "envelope.fill", massege: "annatibekina3@gmail.com")
            }
            Divider()
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

struct Card: View {
    let image: String
    let massege: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: image)
                    .foregroundColor(Color(red: 1.00, green: 0.92, blue: 0.65))
                Text(massege)
                    .foregroundColor(Color(red: 1.00, green: 0.92, blue: 0.65))
            })
            .foregroundColor(.gray)
    }
}
