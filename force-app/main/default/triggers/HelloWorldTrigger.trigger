trigger HelloWorldTrigger on Account (before insert) {
	System.debug('Hello World');
    for(Account a: Trigger.New){
        a.Description = 'New Description';
    }
}