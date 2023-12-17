//
//  ContentView.swift
//  ColorizedAppWithSwiftUI
//
//  Created by Елизавета Шалдыбина on 16.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValueFirst = Double.random(in: 0...255)
    @State private var sliderValueSecond = Double.random(in: 0...255)
    @State private var sliderValueThird = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(UIColor(
                red: 148/255,
                green: 189/255,
                blue: 229/255,
                alpha: 1.0))
                .ignoresSafeArea()
            
            VStack {
                Color(UIColor(
                    red: sliderValueFirst/255,
                    green: sliderValueSecond/255,
                    blue: sliderValueThird/255,
                    alpha: 1.0))
                    .frame(width: 350, height: 200)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 8)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.white, lineWidth: 4)
                    )
                
                ColorSliderView(value: $sliderValueFirst, color: .red)
                ColorSliderView(value: $sliderValueSecond, color: .green)
                ColorSliderView(value: $sliderValueThird, color: .blue)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct ColorSliderView: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            Text("\(Int(value))").foregroundStyle(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            Text("255").foregroundStyle(.white)
        }
    }
}
