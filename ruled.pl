:- use_moduled(petRec,[]).

feeding_3_month(PET_TYPE,TOTAL):- 
	petRec:pet_price(PET_TYPE,PRICE) 
	, petRec:price_per_month(PET_TYPE,PRICES)
	,(TOTAL is PRICE+3*PRICES).

feeding_consider(PET_TYPE,BUDGET):-
	petRec:feeding_3_month(PET_TYPE,TOTAL) , (BUDGET > TOTAL).

sitting_consider(PET_TYPE,FREETIME) :-
	(FREETIME = "YES") | (FREETIME="NO") 
	, petRec: not(pet_sitting(PET_TYPE)).

fur_consider(PET_TYPE,WANT_FUR):-
	(WANT_FUR = "YES") , petRec:have_fur(PET_TYPE) 
	| (WANT_FUR = "NO") , petRec:no_fur(PET_TYPE).

flea_consider(PET_TYPE,ALLER_FLEA):-
	(ALLER_FLEA="YES"),petRec:(no_flea(PET_TYPE))
	|(ALLER_FLEA = "NO").





	