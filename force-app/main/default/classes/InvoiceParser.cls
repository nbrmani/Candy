public class InvoiceParser {
    public Double totalPrice;
    public DateTime statementDate;
    public Long invoiceNumber;
    public List<LineItem> lineItems;
    
    public InvoiceParser(Double price, DateTime dt, Long invNumber, List<LineItem> liList) {
        totalPrice = price;
        statementDate = dt;
        invoiceNumber = invNumber;
        lineItems = liList.clone();
    }
    
    
    public class LineItem {
    public Double unitPrice;
    public Double quantity;
    public String productName;
}
}