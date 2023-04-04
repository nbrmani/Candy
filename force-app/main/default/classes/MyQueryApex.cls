public class MyQueryApex {
    //Class definition and body

  // public static Integer myValue = 0;  //Class Member variable
  // public static String myString = ''; //Class Member variable
   
   public Integer getAccount() 
   {
   // Method definition and body
   // do some calculation
   //   myValue = myValue+10;
      
    Datetime halfHourBack = Datetime.now().addMinutes(-30);
    //'List<Account> records = [SELECT count() FROM Account WHERE LastModifiedDate >= :halfHourBack];
    Integer records = [SELECT count() FROM Account WHERE LastModifiedDate >= :halfHourBack];
    // Write all account array info
    System.debug(halfHourBack);
    System.debug(records);    
    return records;
   }
   
   public void sendEmail()
   {
    // First, reserve email capacity for the current Apex transaction to ensure
    // that we won't exceed our daily email limits when sending email after
    // the current transaction is committed.
  //  MyQueryApex aa = MyQueryApex();
   // Integer aaa = MyQueryApex.getAccount();
   Integer aaa = getAccount();
    System.debug('inside mail' + aaa);
    Messaging.reserveSingleEmailCapacity(2);
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    String[] toAddresses = new String[] {'rajamanin@hcl.com'}; 
    String[] ccAddresses = new String[] {'rneelamegam@hcl.com'};
    // Assign the addresses for the To and CC lists to the mail object.
    mail.setToAddresses(toAddresses);
    mail.setCcAddresses(ccAddresses);
    mail.setReplyTo('nbrmani@gmail.com');
    mail.setSenderDisplayName('Salesforce Support');
    mail.setSubject('Count of Exception log : ' + aaa);
    mail.setBccSender(false);
    mail.setPlainTextBody('Count of Exception log : ' + aaa);
    mail.setHtmlBody('Count of Exception log : ' + aaa);
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
   }
   
   
}