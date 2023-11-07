//
//  addPOIToFirebase.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 11/6/23.
//

import SwiftUI

struct addPOIToFirebase: View {
    
    @EnvironmentObject var poi:DataModels
    
    
    
    @State private var name:String = ""
    @State private var description:String = ""
    @State private var type:String = ""
    @State private var longitude:String = ""
    @State private var latitude:String = ""
    
    
    
    var body: some View {
        VStack{
            TextField("name", text: $name)
            TextField("description", text: $description)
            TextField("type", text: $type)
            TextField("long", text: $longitude).keyboardType(.numberPad)
            TextField("lat", text: $latitude).keyboardType(.numberPad)
            
            //add button
            Button{
                poi.addPOItoFirebase(name: name, desc: description, type: type, long: longitude, lat: latitude)
            }label: {
                Text("Add to firebase")
            }
        }
    }
    
    
    
    
    
    
    
}

struct addPOIToFirebase_Previews: PreviewProvider {
    static var previews: some View {
        addPOIToFirebase().environmentObject(DataModels())
    }
}
