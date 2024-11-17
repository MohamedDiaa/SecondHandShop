//
//  SettingView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-18.
//

import SwiftUI

struct SettingView: View {

    @State var isDarkMode = false

    var body: some View {

        List {
            
            Text("Language")
            
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
            }
        }
    }
}

#Preview {
    SettingView()
}
