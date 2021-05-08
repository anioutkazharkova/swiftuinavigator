//
//  ContainerModel.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation
import Combine


public class ContainerModel:ObservableObject {
    @Published var hasError: Bool = false
    @Published var errorText: String = ""
    @Published var isLoading: Bool = false
    
    public func setupError(error: String){
        self.errorText = error
        if (!error.isEmpty) {
            self.hasError = true
        }
    }
    
    public func errorShown() {
        self.hasError = false
        self.errorText = ""
    }
    
    public func showLoading() {
        self.isLoading = true
    }
    
    public  func hideLoading() {
        self.isLoading = false
    }
    
}
