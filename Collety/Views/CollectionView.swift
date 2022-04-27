//
//  CollectionView.swift
//  Collety
//
//  Created by Farrah Alifia on 27/04/22.
//

import SwiftUI

struct CollectionView: View {
    
    @State var showBook: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if true {
                    Text("Hey, book lover!\n\nYou don't have any collection right now:(")
                        .italic()
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .center)
                } else {
                    CollectionShowView()
                }
            }.navigationTitle("Collection").offset(y: -60).navigationBarHidden(true)
             
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
