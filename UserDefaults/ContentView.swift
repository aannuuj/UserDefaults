//
//  ContentView.swift
//  UserDefaults
//
//  Created by Hariom Palkar on 14/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var userName = "\(AppData.username)"
    var body: some View {
        Text(userName)
        TextField("\(AppData.username)", text: $userName)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
