public class BatchApex11 Implements Database.Batchable<SObject> {
    //tüm accountların isimlerinin sonuna 'batch11' ekleyelim.

    //start
    public Database.QueryLocator start(Database.BatchableContext bc) {
        string query = 'select id, name from account';
        return Database.getQueryLocator(query);
    }

    //execute
    public void execute (Database.BatchableContext bc, List<Account> scope){
        for(Account acc : scope) {
            acc.name = acc.Name + ' Batch 11';
        }
        try {
            update scope;
        } catch (Exception e) {
            System.debug(e);
        }
    }

    //finish
    public void finish (Database.BatchableContext bc){
        System.debug('işlem bitti');
        AsyncApexJob a = [select id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email from AsyncApexJob where id =:bc.getJobId()];

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAdresses = new String[]{'betulozbudak@gmail.com', 'ebruca889@gmail.com', 'uzumcufatma45@gmail.com', 'aydinbezgin3@gmail.com', 'betulagar.pt@gmail.com','rabiaselli@gmail.com','burak.061634@mgail.com'};
        mail.settoAddresses(toAdresses);
        mail.setSubject(a.status);
        mail.setPlainTextBody(System.label.accountNameUpdate + '\n'+ ' The batch Apex job processed ' + a.TotalJobItems +'\n'+ ' batches with ' + a.NumberOfErrors + ' failures.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}
