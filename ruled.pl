:- use_moduled(petRec,[]).

price_consider(PET_TYPE,INCOME) :-
	petRec:pet_price(PET_TYPE,PRICE), (INCOME >= PRICE).
	

	