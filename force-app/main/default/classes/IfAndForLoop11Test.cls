/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class IfAndForLoop11Test {
    @isTest
    Private static void ifNumbersTest() {
        IfAndForLoop11.ifNumbers(9, 7);
        IfAndForLoop11.ifNumbers(5, 7);
        IfAndForLoop11.ifNumbers(7, 7);
    }
    @isTest
    public static void ifBread(){
        IfAndForLoop11.ifBread('simit', 5);
        IfAndForLoop11.ifBread('kek', 3);
        IfAndForLoop11.ifBread('ekmek', 7);
    }
    @isTest
    public static void forLoopSumNumbers(){
        integer tplm = IfAndForLoop11.forLoopSumNumbers(5);
        System.assertEquals(15, tplm);

        integer tplm2 = IfAndForLoop11.forLoopSumNumbers(-5);
        System.assertEquals(null, tplm2);
    }
}