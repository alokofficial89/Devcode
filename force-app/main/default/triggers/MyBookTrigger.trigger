trigger MyBookTrigger on Book__c (before insert) {
    
    Book__c[] books = Trigger.New;
    MyHelloBook.applyDiscount(books);

}