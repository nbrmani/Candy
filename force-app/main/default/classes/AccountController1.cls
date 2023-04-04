public class AccountController1 {
    public Account account { get; set; }
    
    public AccountController1() {
        account = new Account();
    }
    
    public void saveAccount() {
        try {
            insert account;
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Account created successfully.'));
            account = new Account();
        } catch(Exception e) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error creating account: ' + e.getMessage()));
        }
    }
}