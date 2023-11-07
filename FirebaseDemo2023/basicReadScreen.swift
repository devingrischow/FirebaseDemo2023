//
//  basicReadScreen.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 11/6/23.
//

import SwiftUI

struct basicReadScreen: View {
    
    @EnvironmentObject var fireBaseUtility:DataModels
    
    @State private var data:[String:Any] = [:]
    @State private var textData:String = ""
    var body: some View {
        VStack{
            Text(textData)
        }.onAppear{
            Task{
                let firdata = await fireBaseUtility.getDocumentFromFirebase(id: "Dennys")
                
                data = firdata
                textData = data["New Restaurant"] as! String
                
                
            }
        }
        
    }
}

struct basicReadScreen_Previews: PreviewProvider {
    static var previews: some View {
        basicReadScreen().environmentObject(DataModels())
    }
}
