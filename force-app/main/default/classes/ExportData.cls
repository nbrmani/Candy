global class ExportData Implements Database.Batchable<sObject>{
    global final String query;
    global final String s_object;
    global final String Field;
    global final String Field_value;
    
    global ExportData(String q,String s, String f,String v)     {

        query = q;
        s_object = s;
        Field = f;
        Field_value = v;
        }
    
    global Database.QueryLocator start (Database.BatchableContext bc)
    {
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Account> batch)
    {
    for(Account o : batch)
        {
    //        o.put(field, field_value);
//            system.debug('Completed');

 system.debug(o.Name + ' - ' + o.Id);
        }
        update batch;
        
    }  
    global void finish(Database.BatchableContext BC)
    {
        
    }
}