//
//  ContentView.swift
//  SwiftUIScrollViewTutorial
//
//  Created by Doris on 2020/07/09.
//  Copyright © 2020 kakao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var items = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    var body: some View {
        ScrollView(Axis.Set.horizontal, showsIndicators: true) {
            HStack {
                ForEach(self.items, id: \.self) { item in
                    Circle()
                    .fill(item)
                    .frame(width: 100, height: 100)
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
