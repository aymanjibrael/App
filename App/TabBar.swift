//
//  TabBar.swift
//  App
//
//  Created by Ayhan on 8.09.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            Text("")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(Color("System"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
