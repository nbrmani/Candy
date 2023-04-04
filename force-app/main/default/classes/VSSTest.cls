public with sharing class VSSTest {
    public static list<Account> VSSTest1() {
    return [SELECT Id,Name FROM Account limit 10];
    }
}