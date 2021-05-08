//
//  LazyView.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation
import Foundation
import SwiftUI

public struct LazyView<Content: View>: View {
    let build: () -> Content
   public init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
   public var body: Content {
        build()
    }
}
