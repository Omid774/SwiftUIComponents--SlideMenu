//
//  SlideMenuView.swift
//  SlideMenu
//
//  Created by Omid Heydarzadeh on 4/23/24.
//

import SwiftUI

struct SlideMenuView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.title)
                .foregroundColor(.white)
            
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            
            Link(destination: URL(string: "https://www.apple.com")!) {
                Text("Apple")
            }
            
            Spacer()
        }
        .padding(32)
        .background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    SlideMenuView()
}
