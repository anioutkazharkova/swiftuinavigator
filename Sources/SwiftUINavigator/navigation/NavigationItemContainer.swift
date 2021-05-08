//
//  NavigationItemContainer.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 07.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import SwiftUI

public protocol IItemView:View {
    var listener: INavigationContainer? {get set}
}


public protocol INavigationContainer {
    
    func push<Content: View&IItemView>(view: Content)
    
    func pop()
    
    func popToRoot()
}


public struct NavigationItemContainer<Content>: View , INavigationContainer where Content:View&IItemView{
    public var viewModel = NavigationViewModel.shared
    //@EnvironmentObject var vm: NavigationViewModel
    
    @State var title: String = ""
    
    private var contentView: Content
    
    public init(content: Content, _ title: String = "") {
        self.contentView = content
        self.contentView.listener = self
    }
    
    public var body: some View {
        return ZStack {
            self.contentView
        }.background(Color.white)
    }
    
    
    public func push<Content: View&IItemView>(view: Content) {
        let item = NavigationItemContainer<Content>(content: view)
        self.viewModel.push(item.toAnyView())
    }
    
    public func pop() {
        self.viewModel.pop()
    }
    
    public func popToRoot() {
        self.viewModel.popToRoot()
    }
    
}
