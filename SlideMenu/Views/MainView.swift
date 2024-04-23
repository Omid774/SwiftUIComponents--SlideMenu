//
//  MainView.swift
//  SlideMenu
//
//  Created by Omid Heydarzadeh on 4/23/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var showMenu: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.mint.ignoresSafeArea(.all, edges: .all)
                
                VStack {
                    Text("Hello, World!")
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                GeometryReader { _ in
                    
                    HStack {
                        Spacer()
                        SlideMenuView()
                        //                            .offset(x: 0, y: 20)
                        //                            .offset(x: UIScreen.main.bounds.width)
                            .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                            .animation(.easeInOut(duration: 0.4), value: showMenu)
                    }
                    
                }
                .background(Color.black.opacity(showMenu ? 0.5 : 0))
                
            }
            .navigationTitle("Slide Menu Demo")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                
                Button {
                    self.showMenu.toggle()
                } label: {
                    
                    if showMenu {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.red)
                    } else {
                        Image(systemName: "text.justify")
                            .font(.title)
                            .foregroundColor(.red)
                    }
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    MainView()
}
