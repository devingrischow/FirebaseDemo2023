//
//  displayPOI.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 11/6/23.
//

import SwiftUI

struct displayPOI: View {
    @EnvironmentObject var fireBaseUtility:DataModels
    
    
    @State var beanPOI:PointOfInterest?
    @State var tonysPOI:PointOfInterest?
    
    @State private var name:String = ""
    @State private var description:String = ""
    @State private var type:String = ""
    @State private var longitude:String = ""
    @State private var latitude:String = ""
    
    
    
    var body: some View {
        VStack{
            Text(name)
            Text(description)
            Text(type)
            Text(longitude)
            Text(latitude)
            
            
        }.onAppear{
            //when the screen loads, set up everything
            Task{
                let beanPOIdata = await fireBaseUtility.getPOIDataFromName(pointName: "The Bean")
                beanPOI = PointOfInterest(dictionary: beanPOIdata)
                //redeclare POI with proper data
                
                let tonyPOIdata = await fireBaseUtility.getPOIDataFromName(pointName: "Tonys Cafe")
                tonysPOI = PointOfInterest(dictionary: tonyPOIdata)
                
                name = tonysPOI!.name
                description = tonysPOI!.description
                type = tonysPOI!.type
                longitude = String(tonysPOI!.longitude)
                latitude = String(tonysPOI!.latitude)
            }
            
        }
    }
    
    
    
    
    
    
    
}

struct displayPOI_Previews: PreviewProvider {
    static var previews: some View {
        displayPOI().environmentObject(DataModels())
    }
}
