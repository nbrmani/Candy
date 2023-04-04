public class contactListCtrl {
    @AuraEnabled(cacheable=true)

    public static list<contact> getContactList(){
            List<Contact> conList = [Select id, lastname from contact limit 10];
        return conList;
    }
    
}