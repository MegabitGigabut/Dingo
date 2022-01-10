public with sharing class RandomAccountTrigger {
    public static void randomAccountInserter(List<Account> accs) {
        List<Account> newA = new List<Account>();
        for(Account acc : accs){
            if(String.isEmpty(acc.Phone)){
                acc.Phone = '0697';
                newA.add(acc);
            }
        }
        insert newA;
    }
}
