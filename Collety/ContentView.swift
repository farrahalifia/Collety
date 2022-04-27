//
//  ContentView.swift
//  Collety
//
//  Created by Farrah Alifia on 26/04/22.
//

import SwiftUI

enum Tab {
    case first
    case second
}


struct ContentView: View {
    @State private var selectedTab: Tab = .first
    
    var body: some View {
        VStack {
            
            switch selectedTab {
            case .first:
                NavigationView {
                    CollectionView()
                }
            case .second:
                NavigationView {
                    WishlistView()
                }
            }
            CustomTabView(selectedTab: $selectedTab)
                .frame(height: 50)
        }
    }
}



/// custom tab view
struct CustomTabView: View {
    @Binding var selectedTab: Tab
    @State var showSheet: Bool = false
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                selectedTab = .first
            } label: {
                VStack {
                    Image(systemName: "books.vertical")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Collection")
                        .font(.caption)
                }
                .foregroundColor(selectedTab == .first ? .indigo : .gray)
            }
            Spacer()
            Button (action: {
                showSheet.toggle()
            }, label: {
                ZStack {
                    Circle()
                        .foregroundColor(.indigo)
                        .frame(width: 80, height: 80)
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                }
                .offset(y: -40)
            })
            .sheet(isPresented: $showSheet, content: {
                AddView()
            })
            Spacer()
            Button {
                selectedTab = .second
            } label: {
                VStack {
                    Image(systemName: "bookmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Wishlist")
                        .font(.caption)
                }
                .foregroundColor(selectedTab == .second ? .indigo : .gray)
            }
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

