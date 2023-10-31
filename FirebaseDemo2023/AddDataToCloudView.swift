//
//  AddDataToCloud.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 10/30/23.
//

import SwiftUI

struct AddDataToCloudView: View {
    @EnvironmentObject var d:DataModels
    
    @State private var dataEntry = ""
    
    var body: some View {
        
        VStack{
            
            TextField("Some Cool Data!", text: $dataEntry)
            
            
            Button{
                Task{
                    await d.addData(dataToAdd:dataEntry)
                }
            }label: {
                Text("Howdy!")

            }
            
        }
        
    }
    
    
    
    
}

struct AddDataToCloud_Previews: PreviewProvider {
    static var previews: some View {
        AddDataToCloudView().environmentObject(DataModels())
    }
}
