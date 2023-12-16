//
//  ContentView.swift
//  ColorizedAppWithSwiftUI
//
//  Created by Елизавета Шалдыбина on 16.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
