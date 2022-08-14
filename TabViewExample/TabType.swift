//
//  TabType.swift
//  TabViewExample
//
//  Created by Alexander Khitev on 8/14/22.
//

import Foundation

enum TabType: Int, Hashable, CaseIterable, Identifiable {
    case contacts
    case calls
    case chats
    case settings

    var id: Int {
        rawValue
    }

    var title: String {
        String(describing: self)
            .capitalized
    }
    var systemImage: String {
        switch self {
        case .contacts:
            return "folder.fill"
        case .calls:
            return "arrow.right.doc.on.clipboard"
        case .chats:
            return "paperplane.circle.fill"
        case .settings:
            return "gear"
        }
    }
}
