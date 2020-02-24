//
//  ContentView.swift
//  SampleAlertApp
//
//  Created by Chris Thomas on 10/02/2020.

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 8) {
            Button(action: {}) {
                Text("This is a Broken Button")
            }
            .buttonStyle(BrokenButtonStyle())
            Button(action: {}) {
                Text("This is a Working Button")
            }
            .buttonStyle(WorkingButtonStyle())
        }
    }
}
