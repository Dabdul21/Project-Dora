//
//  CloudShape.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 10/14/24.
//

import SwiftUI
struct CloudShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        let cloudHeight = height * 0.6

        // Main cloud body
        path.addRoundedRect(in: CGRect(x: 0, y: height * 0.2, width: width, height: cloudHeight), cornerSize: CGSize(width: cloudHeight / 2, height: cloudHeight / 2))

        // Top left smaller cloud bump
        path.addEllipse(in: CGRect(x: width * 0.1, y: 0, width: width * 0.3, height: height * 0.4))

        // Top right smaller cloud bump
        path.addEllipse(in: CGRect(x: width * 0.6, y: 0, width: width * 0.3, height: height * 0.4))

        return path
    }
}
