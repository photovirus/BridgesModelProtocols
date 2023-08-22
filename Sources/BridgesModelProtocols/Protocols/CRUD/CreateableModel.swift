//
//  CreateableModel.swift
//  
//
//  Created by Yakov Shapovalov on 02.04.2023.
//

import Vapor

public protocol CreateableModel: BasicModel {
    associatedtype Create: Content

    init(with input: Create)
}
