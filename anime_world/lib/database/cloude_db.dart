

import 'package:appwrite/appwrite.dart';

Client client = Client(
  endPoint: "https://cloud.appwrite.io/v1", 
);


void dbInit(){
  client.setProject("674454c40004457948e6");
}


Future<void> readData() async {
  try{

    Databases databases = Databases(client);

    final response = await databases.listDocuments(
      databaseId: '6744564c0018fc618893',
      collectionId: '6744567d001ab8459ea5'
    );

    print(response.documents.toString());
  }catch(e){
    print(e.toString());
  }
}