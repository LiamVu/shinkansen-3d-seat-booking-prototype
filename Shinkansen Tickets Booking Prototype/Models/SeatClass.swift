//
//  SeatClassEntity.swift
//  Shinkansen Tickets Booking Prototype
//
//  Created by Nattawut Singhchai on 6/7/19.
//  Copyright © 2019 Virakri Jinangkul. All rights reserved.
//

import SceneKit

struct SeatClass: Codable {
    let id: Int
    let name: String
    let description: String
    let seatClass: SeatClassType
    let price: Float
    let isAvailable: Bool
}

enum SeatClassType: String, Codable {
    case granClass = "granClass"
    case green = "green"
    case ordinary = "ordinary"
    
    var name: String {
        switch self {
        case .granClass:
            return "Gran Class"
        case .green:
            return "Green Class"
        case .ordinary:
            return "Ordinary Class"
        }
    }
}

struct SeatClassEntity: Codable {
    let id: Int
    let seatClass: SeatClassType
    let name: String
    let carNumber: String
    let reservableEntities: [ReservableEntity]
    let viewableRange: ClosedRange<SCNVector3>
    let transformedModelEntities: [TransformedModelEntity]
}
