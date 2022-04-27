//
//  WelcomeView.swift
//  Collety
//
//  Created by Farrah Alifia on 27/04/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome!")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.indigo)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                Image("collety_illust2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                Text("Hi, I’m Elly!")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity)
                    .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
                Text("Collety will help you classificate your disorganized book series by grouping them in collections so it’ll be easier to keeping track of your book.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity)
                    .padding(EdgeInsets(top: -80, leading: 30, bottom: 20, trailing: 30))
                NavigationLink(destination: ContentView().navigationBarHidden(true), label: {
                    Text("Start")
                        .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(Color.indigo.cornerRadius(10))
                })
                .navigationBarHidden(true)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .center)
            .padding(.vertical,90)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
