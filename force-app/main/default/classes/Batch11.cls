//Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..

public class Batch11 implements Database.Batchable<SObject>{
    //start-soql ile islem yapilacak tum veriler bir listeye alinir ve execute icin return edilir.
     public Database.QueryLocator start(database.BatchableContext bc){
         database.QueryLocator q1 = Database.getQueryLocator([select id,name,annualrevenue from account]);
         return q1;
     }



    //execute-parca parca islem yapilir.
     public void execute(database.BatchableContext bc, List<Account> scope){
        list<account> updateAccounts = new list<account>();
        for(account acc : scope ){
            acc.name += 'update';
            if(acc.AnnualRevenue == null) {
            acc.AnnualRevenue = 10000;
            }
        updateAccounts.add(acc);
        }
        update updateAccounts;
    }
 


    //finish=bitis mesaji veya mail.baska bir klas burada cagrilir.

    public void finish(database.BatchableContext bc){
         System.debug('Batch işlemi bitti...');
         id jobid = system.enqueueJob(new Queuable111());//queueuable metodu batchabledan cagirdik;
    }
}