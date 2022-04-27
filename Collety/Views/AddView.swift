//
//  AddView.swift
//  Collety
//
//  Created by Farrah Alifia on 27/04/22.
//

import SwiftUI


class BookDataViewModel: ObservableObject {
    @State var bookName = ""
    @State var authorName = ""
    @State var volumeNumber = ""
    @State var collectionName = ""
}



struct AddView: View {
    
    @StateObject var viewModel = BookDataViewModel()
    @State var dataArray: [String] = []
    
    
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Add your book information")
                .fontWeight(.bold)
                .foregroundColor(.indigo)
            Spacer()
            
            VStack {
                TextField ("Book Name", text: $viewModel.bookName).padding(.vertical,5)
                TextField ("Author", text: $viewModel.authorName).padding(.vertical,5)
                TextField ("Volume", text: $viewModel.volumeNumber).padding(.vertical,5)
                TextField ("Collection", text: $viewModel.collectionName).padding(.vertical,5)
            }.textFieldStyle(AddBookTextFieldStyle())
            Spacer()
            Button (action: {
                
            }, label: {
                HStack {
                    Image(systemName: "plus")
                    Text("Add to Collection")
                }
                    .padding(EdgeInsets(top: 20, leading: 50, bottom: 20, trailing: 50))
                    .foregroundColor(.white)
                    .font(.headline)
                    .background(Color.indigo.cornerRadius(10))
            })
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
         .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        
//        func saveData() {
//            dataArray.append(viewModel())
//        }
        
    }
}

// custome text field style
struct AddBookTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(15)
            .background(.white)
            .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.indigo, lineWidth: 2)
            )
    }
}


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
