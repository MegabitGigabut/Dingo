public with sharing class RandomAccCreator {
    @AuraEnabled(cacheable=true)
    public static List<Account> getRandomAccs(){
        List<Account> accs = [SELECT Id FROM Account WHERE Phone = NULL];
        return accs;
    }
}
