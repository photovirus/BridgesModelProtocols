//
//  BasicModel.swift
//  
//
//  Created by Yakov Shapovalov on 02.04.2023.
//

import Bridges

public protocol BasicModel: Table {

    var id: UUID { get set }

    var createdAt: Date { get set }
    var updatedAt: Date { get set }
    var deletedAt: Date? { get set }

}
