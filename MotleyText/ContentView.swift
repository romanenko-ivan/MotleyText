//
//  ContentView.swift
//  MotleyText
//
//  Created by Романенко Иван on 03.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var width = 300.0
    
    private let minWidth: CGFloat = 100
    private let maxWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            VStack {
                Text("Марафон ")
                    .foregroundStyle(.gray)
                    .font(.caption) +
                Text("по SwiftUI ")
                    .foregroundStyle(.black)
                    .font(.body) +
                Text("«Отцовский Пинок»")
                    .foregroundStyle(.blue)
                    .font(.title).bold()
            }
            .frame(width: width, height: 200)
            .background(
                Rectangle()
                    .stroke(Color.red, lineWidth: 1.0)
            )
            .frame(minWidth: minWidth, maxWidth: maxWidth)
            
            Slider(
                value: $width,
                in: minWidth...maxWidth,
                step: 1
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
