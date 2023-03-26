public with sharing class RestCallouts11 {
    public static void getUser() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://reqres.in/api/users/4');
        req.setMethod('GET');

        Http Http = new Http();
        HttpResponse response = Http.send(req);

        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
            String jsonUser = response.getBody();
            Map<String, Object> userValue = (Map<String, Object>)JSON.deserializeUntyped(jsonUser);
            System.debug('veri=>'+userValue);

            Map<String, Object> userInfoData = (Map<String, Object>)userValue.get('data');
            System.debug('data=>'+userInfoData);
            System.debug('Id=>'+userInfoData.get('id'));
            System.debug('Email=>'+userInfoData.get('email'));
            System.debug('First Name=>'+userInfoData.get('first_name'));
            System.debug('Last Name=>'+userInfoData.get('last_name'));

            Map<String, Object> userInfoSupport = (Map<String, Object>)userValue.get('support');
            System.debug('support=>'+userInfoSupport);
            System.debug('text=>'+userInfoSupport.get('text'));
            System.debug('url=>'+userInfoSupport.get('url'));
        }else{
            System.debug('Something went wrong!');
        }
    }
}