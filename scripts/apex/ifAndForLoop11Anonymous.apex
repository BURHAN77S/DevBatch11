ifAndForLoop11 ifl1 = new ifAndForLoop11();
ifl1.ifNumbers(13, 8);
ifl1.ifNumbers(13, 38);
ifl1.ifNumbers(11, 11);

ifAndForLoop11 ifl2 = new ifAndForLoop11();
ifl2.ifBread('kek', 5);
ifl2.ifBread('simit', 7);
ifl2.ifBread('cay', 2);

ifl2.ifBreadSwitch('kek', 5);
ifl2.ifBreadSwitch('simit', 7);
ifl2.ifBreadSwitch('cay', 2);

for (Integer i=1; i <= 10; i++) {
    System.debug('for dongusu ' + i + ' kez dondu');
}

ifAndForLoop11 ifl3 = new ifAndForLoop11();
System.debug('return edilen toplam = ' + ifl3.forLoopSumNumbers(11));

ifAndForLoop11 ifl4 = new ifAndForLoop11();
System.debug('return toplami = ' + ifl4.whileSumNumbers(10));