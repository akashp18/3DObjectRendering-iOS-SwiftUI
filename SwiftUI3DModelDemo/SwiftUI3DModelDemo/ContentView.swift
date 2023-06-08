//
//  ContentView.swift
//  SwiftUI3DModelDemo
//
//  Created by Akash on 2023-06-05.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(gadgetList, id: \.self) { row in
                        NavigationLink(destination: DetailedView(index: gadgetList.firstIndex(of: row) ?? 0)) {
                            HStack(spacing: 12) {
                                Text(row.name)
                            }
                            .padding(.bottom, 20)
                        }
                    }
                }
            }
            .navigationTitle("3D Gadgets")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
