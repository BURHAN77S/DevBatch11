List<Account> accList = new List<Account>();
Account acc1 = new Account();

acc1.Name='Integration Test 1';
acc1.AnnualRevenue = 100000;
accList.add(acc1);

Account acc2 = new Account();

acc2.Name='Integration Test 2';
acc2.AnnualRevenue = 200000;
accList.add(acc2);

System.debug(accList);

String accListJson = JSON.serialize(accList);

System.debug('Listenin Json formati '+ accListJson);

List<Account> listAccount = (List<Account>)JSON.deserialize(accListJson, List<Account>.class);

System.debug(listAccount);

List<Opportunity> aL =[Select Id, Name, Amount from Opportunity where Amount >10000 ORDER BY Amount LIMIT 1];

System.debug(aL);

String aLJson = JSON.serialize(aL);

System.debug(aLJson);

List<Case> aLCase =[Select Id, CaseNumber, Subject, Description, Contact.FirstName, Contact.Lastname, Account.Name from Case where ContactId != null LIMIT 2];

System.debug(aLCase);

String aLCaseJson = JSON.serialize(aLCase);

System.debug(aLCaseJson);