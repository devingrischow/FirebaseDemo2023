//
//  PointOfInterest.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 11/6/23.
//

import Foundation


class PointOfInterest:ObservableObject{
    
    
    //data fields for firebase
    @Published var name:String = ""
    
    @Published var description:String = ""
    
    @Published var type:String = ""
    
    @Published var longitude:Double = 0.0
    
    @Published var latitude:Double = 0.0
    
    
    var dictionary:[String:Any] {
        return ["name":name, "description":description, "type":type, "longitude":longitude, "longitude": longitude]
    }
    
    
    init(name: String, description: String, type: String, longitude: Double, latitude: Double) {
        self.name = name
        self.description = description
        self.type = type
        self.longitude = longitude
        self.latitude = latitude
        
    }
    
    
    convenience init () {
        
        self.init(name: "", description: "", type: "", longitude: 0.0, latitude: 0.0)
        
        
    }
    
    
    convenience init (dictionary:[String:Any]){
        let name = dictionary["name"] as! String? ?? ""
        let description = dictionary["description"] as! String? ?? ""
        let type = dictionary["type"] as! String? ?? ""
        let longitude = dictionary["longitude"] as! Double? ?? 0.0
        let latitude = dictionary["latitude"] as! Double? ?? 0.0
        
        

        self.init(name: name, description: description, type: type, longitude: longitude, latitude: latitude)



    }
    
    
    
    
    
    
}


//global function:

func readDataDataFromKey(){
    print("howday")
}
