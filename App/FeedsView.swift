//
//  FeedsView.swift
//  App
//
//  Created by Ayhan on 8.09.2022.
//

import SwiftUI

struct FeedsView: View {
    
    @State var text = ""
    
    @ObservedObject var model = ViewModel()
    var body: some View {
        NavigationView{
            VStack{
                List(model.list) { item in
                  HStack {
                      Text(item.text)
                          }
                       }
                
            }
            VStack {
                        HStack {
                            TextField("Text", text: $text)
                        }
                        Button {
                            model.addData(text: text)
                        } label: {
                            Text("Add Feed")
                        }
                    }
                    .padding()
        }
       
        
    }
    init() {
          model.getData()
      }
}

struct FeedsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedsView()
    }
}
