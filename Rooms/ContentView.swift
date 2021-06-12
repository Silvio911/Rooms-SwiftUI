//
//  ContentView.swift
//  Rooms
//
//  Created by Silvio Bulla on 12.06.21.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []

    var body: some View {
        NavigationView{
            List(rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}

struct RoomCell: View {
    let room: Room
    var body: some View {
        NavigationLink(destination: Text(room.name)) {
            Image(room.thumbnailName)
                .resizable()
                .cornerRadius(5)
                .scaledToFit()
                .frame(width: 60, height: 60)

            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
