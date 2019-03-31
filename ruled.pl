:- use_moduled(petRec,[]).

feeding_3_month(PET_TYPE,TOTAL):- 
	petRec:pet_price(PET_TYPE,PRICE) 
	, petRec:price_per_month(PET_TYPE,PRICES)
	,(TOTAL is PRICE+3*PRICES).

feeding_consider(PET_TYPE,BUDGET):-
	petRec:feeding_3_month(PET_TYPE,TOTAL) , (BUDGET > TOTAL).

sitting_consider(PET_TYPE,FREETIME) :-
	(FREETIME = "YES"),pet(PET_TYPE) | (FREETIME="NO") 
	, petRec: not(pet_sitting(PET_TYPE)).

fur_consider(PET_TYPE,WANT_FUR):-
	(WANT_FUR = "YES") , petRec:have_fur(PET_TYPE) 
	| (WANT_FUR = "NO") , petRec:no_fur(PET_TYPE).

flea_consider(PET_TYPE,ALLER_FLEA):-
	(ALLER_FLEA="YES"),petRec:(no_flea(PET_TYPE))
	|(ALLER_FLEA = "NO"), pet(PET_TYPE).

children_consider(PET_TYPE,HAVE_CHILDREN):-
	(HAVE_CHILDREN = "YES")
	,petRec:aggressive_lv(PET_TYPE,LV),(LV=1 | LV=2)
	,petRec:pet_size(PET_TYPE,SIZE),(SIZE = small | SIZE = medium)
	| (HAVE_CHILDREN = "NO"),pet(PET_TYPE).

resident_consider(PET_TYPE,RES):- (RES = "Condomimium"  | RES = "Condo")
	,petRec:pet_size(PET_TYPE,SIZE)
	,(SIZE = small) 
	,petRec:(no_sound(PET_TYPE)) 
	| (RES = "House"),pet(PET_TYPE).

noisy_consider(PET_TYPE,IS_NOISY):-
	(IS_NOISY = "Yes"),petRec:have_sound(PET_TYPE)|
	(IS_NOISY = "No" ,petRec:no_sound(PET_TYPE)).

pet_rec(PET_TYPE,HAVE_CHILDREN,WANT_FUR,IS_NOISY,BUDGET,FREETIME,RES,ALLER_FLEA) :-
	children_consider(PET_TYPE,HAVE_CHILDREN) 
	,fur_consider(PET_TYPE,WANT_FUR)
	,feeding_consider(PET_TYPE,BUDGET)
	,sitting_consider(PET_TYPE,FREETIME)
	,flea_consider(PET_TYPE,ALLER_FLEA)
	,resident_consider(PET_TYPE,RES)
	,noisy_consider(PET_TYPE,IS_NOISY).








	