/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class Dml11Test {
    @IsTest
    static void createAccountsAndContactsTest(){
        
        Test.startTest();

        Dml11.createAccountsAndContacts(5);

        Test.stopTest();
        
        List<Account> accList = [select id, name, (Select Id, LastName from Contacts) from Account];
        
        integer acSys = accList.size();
        System.assertEquals(5, acSys);

        integer oneAccOfCon = accList[0].Contacts.size();
        System.assertEquals(5, oneAccOfCon);

        /*String conName = accList[0].Contacts[0].Name;
        System.assertEquals('Contact 1.1', conName);*/
    }
}