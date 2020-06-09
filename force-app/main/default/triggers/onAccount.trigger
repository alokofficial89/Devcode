trigger onAccount on Account (after insert) {
List<Account> listacc = new List<Account>();


Account acc= new Account(Name='Alok');
listacc.add(acc);
insert listacc;

}