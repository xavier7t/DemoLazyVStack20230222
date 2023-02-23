//
//  ContentView.swift
//  DemoLazyVStack20230222
//
//  Created by Xavier on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...149, id: \.self) { i in
                    HStack {
                        Text("Row \(i)")
                        Spacer()
                    }
                    .padding(20)
                    .onAppear {
                        print("Row \(i) on appear", Date())
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
