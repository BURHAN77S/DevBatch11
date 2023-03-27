@isTest
public with sharing class RestFlagCountryApiOutboundCalloutTest {
    @isTest
    private static void getFlagsCountryTest() {
        //1. Bir mock create edelim..
        RestGetFlagCountryCalloutMock mock = new RestGetFlagCountryCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //2. metodu çağırma start test
        test.startTest();
        HttpResponse response = RestFlagsCountry.getCounty();
        test.stopTest();
        //3. asserts kontrolleri..
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
}