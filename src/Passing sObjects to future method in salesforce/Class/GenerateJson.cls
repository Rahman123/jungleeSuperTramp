public class GenerateJson{
    //Constructor
    public GenerateJson(){
        // I have hardcoded the name and the account number in Kannada!! 
        account acc1 = new account(name = 'ಬೆಂಗಳೂರು', AccountNumber= '೧೦೨೯೩೭');
        account acc2 = new account(name ='ಹುಬ್ಬಳ್ಳಿ', AccountNumber= '೬೮೬೮೮೮೦');
        
        //Initialize a list of account
        list<account> accList = new list<account>();
        accList.add(acc1);
        accList.add(acc2);
        
        //Using the JSON.serializePretty we will serialize the list of account.
        string jsonString = JSON.serializePretty(accList);

        //Pass the serialized list to the future method.
        DeserializeJsonRecords.insertAccount(jsonString);
    }
}       