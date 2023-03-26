public class Queuable113 implements Queueable {
    //Queueable2 => Annual revenuesi 10000 olan acconlara bağlı olan contakların lead source ni 'Partner Referal' yapın..
    //bizden istenen recordları public statik bir listenin içine soql ile eklerim.

    public static List<Account> accList = [select id, (select id, LeadSource from Contacts where leadSource = 'Partner Referal') from account where AnnualRevenue = 10000];

    //execute - istenen formattaki tüm contactları getirip descriptiona 'Queueable chain' yazdırın.
    public void execute (QueueableContext contex){
        System.debug('Queueable113 calisti..');
        List<Contact> conList = new List<Contact>();
        for(Account ac : accList){
            conList.addAll(ac.Contacts);
        }
        for (Contact c : conList) {
            c.Description ='Queueable chain';
        }
        update conList;
    }
}
