ParametreliMetotlar11 pm1 = new ParametreliMetotlar11();
string metin = 'Salesforce Developer olma yolunda ilerliyorum..';
integer uzunluk = pm1.uzunluk(metin);
system.debug(metin + 'Cümlesinin karakter sayısı = ' + uzunluk);