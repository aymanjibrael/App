//
//  ViewModel.swift
//  App
//
//  Created by Ayhan on 8.09.2022.
//


import Foundation
import Firebase

class ViewModel : ObservableObject {
    @Published var list = [Feed]()
    
    func getData() {
        let db = Firestore.firestore()
        
        
        db.collection("feeds").getDocuments { snapshot, error in
            
            if error == nil {
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            return Feed(id: d.documentID, text: d["text"] as? String ?? "")
                        }
                    }
                }
            } else {
                
            }
            
        }
    }
}
