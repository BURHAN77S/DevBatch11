public class Queuable111 implements Queueable {
    //Accountlardan Annual Revenuesi 10000 olanlara birer contact create edip bağlyaalım.
    //bizden istenen recordları public statik bir listenin içine soql ile eklerim.
    public static List<Account> accList = [select Id, name from account where AnnualRevenue = 10000];

    //execute-her bir accounta bir contact create edip bağlayacağız..
    public void execute(QueueableContext contex){
        System.debug('Queuable111 calisti..');
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList){
            Contact c = new Contact();
            c.LastName = 'Queuable111 Test';
            c.Email = 'Queuable111@gmail.com';
            c.AccountId = acc.Id;
            conList.add(c);
        }
        insert conList;
        System.enqueueJob(new Queueable112());
    }
}
