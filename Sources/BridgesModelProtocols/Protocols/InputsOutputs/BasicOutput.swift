//
//  BasicOutput.swift
//  
//
//  Created by Yakov Shapovalov on 02.04.2023.
//

import Vapor

public protocol BasicOutput: Content {
    associatedtype Model: BasicModel

    init(with model: Model)
}
