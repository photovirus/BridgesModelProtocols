//
//  GettableModel.swift
//  
//
//  Created by Yakov Shapovalov on 02.04.2023.
//

import Bridges
import Vapor

public protocol GettableModel: BasicModel {
    associatedtype DefaultOutput
    where DefaultOutput: BasicOutput, DefaultOutput.Model == Self

    static var idKey: KeyPath<Self, Column<UUID>> { get }
    static var deletedAtKey: KeyPath<Self, Column<Date?>> { get }

    func get<T>(as outputType: (T.Type)) -> T
    where T: BasicOutput, T.Model == Self, DefaultOutput == T

}

public extension GettableModel {

    func get<T>(as outputType: (T.Type) = DefaultOutput.self) -> T
    where Self == T.Model, T: BasicOutput, DefaultOutput == T {
        outputType.init(with: self)
    }

}

public extension GettableModel {

    var _$id: Column<UUID> {
        self[keyPath: Self.idKey]
    }

    var _$deletedAt: Column<Date?> {
        self[keyPath: Self.deletedAtKey]
    }

}

