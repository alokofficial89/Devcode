trigger AmountDistribution on BudgetLine__c (after insert, before update) {
    
    set<id> bid = new set<id>();
    Decimal divAmount;
    for (BudgetLine__c budg: trigger.new){
       if(budg.Opportunity_Record__c!= null)
        bid.add(budg.Opportunity_Record__c);       
    }
    
    List<Opportunity> oppList = [select Id, name, Amount from Opportunity where id in : bid ];
    
    for(Opportunity op:oppList){
        if(op.Amount !=null && op.Amount >= 1000){
        divAmount = op.Amount / 4;
        }
    }
    
    for(BudgetLine__c bo: trigger.new){
        bo.BL1__c =divAmount;
        bo.BL2__c =divAmount;
        bo.BL3__c =divAmount;
        bo.BL4__c =divAmount;
    }
    
    
    
}