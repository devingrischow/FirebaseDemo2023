import Foundation
import Firebase
import FirebaseFirestore



class DataModels:ObservableObject{
    
    
    
    
    func addData(dataToAdd:String) async{
        
        let db = Firestore.firestore()
        
        
        
        do{
            //Restuarunt to add....
            let rToAdd = [
                "New Restaurant":dataToAdd,
                "Resturant Locale": "Chicago"
                
            ]
            
            try await db.collection("Restaurants").document(dataToAdd).setData(rToAdd)
            
            
            
        }catch{
            print(error.localizedDescription, "A Error Occured when setting Data")
        }
        
        
        
    }
    
    
}
