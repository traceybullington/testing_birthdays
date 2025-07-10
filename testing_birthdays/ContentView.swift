//
//  ContentView.swift
//  testing_birthdays
//
//  Created by Tracey Bullington on 7/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var newName = ""
    @State private var newBirthday = Date.now
    @State private var friends: [Friend] = [
        Friend(name: "Tracey", birthday: .now),
        Friend(name: "Nicole", birthday: .now)
    ]
    var body: some View {
        NavigationStack {
            
            List(friends, id: \.name) { friend in
                HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newBirthday, in: Date.distantPast...Date.now, displayedComponents: .date) {
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    Button("Save") {
                             let newFriend = Friend(name: newName, birthday: newBirthday)
                             friends.append(newFriend)
                        newName = ""
                           newBirthday = .now
                         }
                         .bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
    
}
#Preview {
    ContentView()
}
