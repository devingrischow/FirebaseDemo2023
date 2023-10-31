import Foundation
import Firebase
import FirebaseFirestore

class DataModels:ObservableObject{
    
    
    
    
    
    
    
    func addData(dataToAdd:String) async{
        let db = Firestore.firestore()
        
        
        
        //add data to the collection...
        do{
            //create a structure for the food
            
            let favFood = ["FavoriteFood":dataToAdd]
            
            try await db.collection("FavoriteFoods").document(dataToAdd).setData(favFood)
            
            
        }catch{
            print(error.localizedDescription, "An Error has occured")
        }
    }
    
    
    
    
    
}





