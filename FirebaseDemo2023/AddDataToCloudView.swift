
import SwiftUI

struct AddDataToCloudView:View{
    
    @EnvironmentObject var d:DataModels
    
    @State private var entry = ""
    
    var body: some View{
        
        VStack{
            
            
            TextField("Restaurant To Add: ", text: $entry)
            
            Button{
                
                Task{
                    await d.addData(dataToAdd:entry)
                }
                
            }label: {
                Text("Submit!")
            }
            
            
        }
        
        
        
        
    }
    
    
}



struct AddDataToCloud_Previews:PreviewProvider{
    static var previews: some View{
        AddDataToCloudView().environmentObject(DataModels())
    }
}
