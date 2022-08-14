//
//  ContentView.swift
//  TabViewExample
//
//  Created by Alexander Khitev on 8/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: TabType = .chats

    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
                ForEach(Array(TabType.allCases)) { tab in
                    SimpleView(title: tab.title)
                        .tabItem {
                            Label(tab.title, systemImage: tab.systemImage)
                        }
                        .tag(tab)
                }
            }
            .navigationTitle(selectedTab.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
