public with sharing class RestFlagsCountry {
    public static HttpResponse getCounty() {
        HttpRequest request  = new HttpRequest();
        request.setEndpoint('https://restcountries.com/v2/all');
        request.setMethod('GET');
        Http http = new Http();
        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200) {
            String jsonData = response.getBody();
            // wrapper yardımıyla bu datayı json dan wrappera dönüştürüyoruz..
            List<wrapperCountryFlag> listWrapper = (List<wrapperCountryFlag>) JSON.deserialize(jsonData, List<wrapperCountryFlag>.class);
            // Orguma kaydetmek için önce bir obje listesi oluşturuyorum..
            List<Flag_Country__c> listCountry = new List<Flag_Country__c>();
            // Wrapper listemi for döngüsünün içine alıp her eleman orguma kaydedilecek bir record oluşturuyorum..
            for(wrapperCountryFlag eachWrapper :  listWrapper){
                Flag_Country__c obj = new Flag_Country__c();
                // sol taraf orgumuzu sağ taraf wrapper dan gelen fieldlar a asing ettikten sonra boş listemize ekliyoruz.
                obj.Name = eachWrapper.name;
                obj.Native_Name__c = eachWrapper.nativeName;
                obj.Population__c = eachWrapper.population;
                obj.Capital__c = eachWrapper.capital;
                obj.Region__c = eachWrapper.region;
                obj.Flag_URL__c = eachWrapper.flags.svg;

                listCountry.add(obj);
            }
            insert listCountry;
        }
        return response;
    }

    public class wrapperCountryFlag {
        public String name;
        public String nativeName;
        public Integer population;
        public String capital;
        public String region;
        public flagsWrapper flags;
    }

    public class flagsWrapper {
        public String svg;
    }
}