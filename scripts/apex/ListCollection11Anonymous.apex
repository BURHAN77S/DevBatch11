List<String> isimList = new List<String>();
isimlist.add('Berna');
isimlist.add('Fatma');
isimlist.add('Rabia');
isimlist.add('Samet');
isimlist.add('Aslı');

System.debug(isimList);
System.debug('Index numarası 2 olan isim get ile = ' + isimlist.get(2));

System.debug('Index numarası 2 olan isim get ile = ' + isimlist [2]);

boolean check = isimlist.contains('Ziynet');
System.debug('Ziynet ismi listemizde var mı ? '+ check);

boolean check1 = isimlist.contains('Samet');
System.debug('Samet ismi listemizde var mı ? '+ check1);

String silinenIsim = isimList.remove(0);
System.debug('Silinen isim=? '+silinenIsim);

System.debug('Listenin son hali = '+ isimlist);

System.debug('Listendeki isim sayısı = '+ isimlist.size());

isimList.sort();
System.debug('Listenin son hali = '+ isimlist);

List<String> isimList2 = new List<String>{'Ziynet', 'Aslı', 'Yusuf', 'Samet', 'Serpil'};

ListCollection11.printListEachItem(isimList2);

List<Decimal> dList = new List<Decimal> {11, 12, 4, 34, 7, 99, 24.5};
decimal sonuc = ListCollection11.listEachItemSum(dList);
System.debug(dList + ' Listesinin elemanlarının toplamı ' + sonuc);

List<Decimal> dList2 = new List<Decimal> {10, 22, 4.5, 34.8, 7, 99, 24.5};
decimal avrg = ListCollection11.listItemsAverage(dList2);
System.debug(dList2 + ' Listesinin elemanlarinin aritmetik ortalamasi ' + avrg);