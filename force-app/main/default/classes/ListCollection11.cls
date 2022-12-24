/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ListCollection11 {
    //parametre olarak string bir liste olan bir metot yazın. bu metot listenin her bir elementini tek tek yazdırsın.
    public static void printListEachItem (List<String> adList) {
        // for ile yapabilirim..
        Integer counter =1;
        for (string eachItem : adList){
            System.debug(' for ' + counter+ ' defa döndü ');
            System.debug(eachItem);
            counter++;
        }
    }
        //decimal bir listeyi parametre olarak alan ve bu listenin elemanlarının toplamını döndüren (return eden) bir metot yazın.
    public static decimal listEachItemSum(List<decimal> decList){
        decimal toplam;
        //gelen liste dolu mu boş mu? kontrolü yapılır; dolu ise işlem yapılır. boş ise işlem yapılmaz.
        //size() ile
        //isEmpty() ile
        if(decList.size()>0){
            toplam = 0;
            for (decimal item : decList){
            toplam += item;
            }
        }
        //İs Empty
        /*if (!declist.isEmpty()){
            toplam = 0;
            for (decimal item : decList){
            toplam += item;
            }
        }*/
        return toplam;
    }
    // decimal bir listenin elemanlarının aritmetik ortalamasını döndüren(return eden) bir liste yazın.
    public static decimal listItemsAverage(List<decimal> avList){
        decimal avarege;
        if(!avList.isEmpty()){
            decimal toplam = listEachItemSum(avList);
            integer elemanSayisi = avlist.size();
            avarege = toplam / elemanSayisi;
        }
        return avarege;
    }
}