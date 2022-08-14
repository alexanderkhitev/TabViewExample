//
//  SimpleView.swift
//  TabViewExample
//
//  Created by Alexander Khitev on 8/14/22.
//

import SwiftUI

struct SimpleView: View {
    let title: String

    var body: some View {
        VStack {
            NavigationLink {
                DetailView()
            } label: {
                Text(title)
            }
        }
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleView(title: "Hello!")
    }
}
