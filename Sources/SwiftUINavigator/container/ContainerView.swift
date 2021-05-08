//
//  ContainerView.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

public struct ContainerView<Content>: IContainer, View where Content: View&IModelView {
    @ObservedObject var containerModel = ContainerModel()
    private var content: Content
    
    public init(content: Content) {
        self.content = content
        self.content.viewModel?.listener = self
    }
    
    public var body : some View {
        ZStack {
            content
            if (self.containerModel.isLoading) {
                LoaderView()
            }
        }.alert(isPresented: $containerModel.hasError){
            Alert(title: Text(""), message: Text(containerModel.errorText), dismissButton: .default(Text("OK")){
                self.containerModel.errorShown()
            })
        }
    }
    
    public func showError(error: String) {
        self.containerModel.setupError(error: error)
    }
    
    public func showLoading() {
        self.containerModel.showLoading()
    }
    
    public func hideLoading() {
        self.containerModel.hideLoading()
    }
}
