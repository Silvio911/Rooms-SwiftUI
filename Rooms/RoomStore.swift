//
//  RoomStore.swift
//  Rooms
//
//  Created by Silvio Bulla on 12.06.21.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    @Published var rooms: [Room] {
        didSet { didChange.send() }
    }

    init(rooms: [Room] = []) {
        self.rooms = rooms
    }

    var didChange = PassthroughSubject<Void, Never>()
}
