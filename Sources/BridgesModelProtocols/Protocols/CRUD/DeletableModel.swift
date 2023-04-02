//
//  DeletableModel.swift
//  
//
//  Created by Yakov Shapovalov on 02.04.2023.
//

import Vapor

public protocol DeletableModel: BasicModel {

    var deletedAt: Date? { get set }

}
