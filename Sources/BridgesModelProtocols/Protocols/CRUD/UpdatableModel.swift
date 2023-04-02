//
//  UpdatableModel.swift
//  
//
//  Created by Yakov Shapovalov on 02.04.2023.
//

import Vapor

public protocol UpdatableModel: BasicModel {
    associatedtype Update: BasicUpdateable

    var updatedAt: Date { get set }

    mutating func update(with update: Update)
}
