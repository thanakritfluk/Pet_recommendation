:- use_module(petRec,[]).

feeding_3_month(PET_TYPE,TOTAL):- 
	petRec:pet_price(PET_TYPE,PRICE) 
	, petRec:price_per_month(PET_TYPE,PRICES)
	,(TOTAL is PRICE+3*PRICES).

feeding_consider(PET_TYPE,BUDGET):-
	petRec:feeding_3_month(PET_TYPE,TOTAL) , (BUDGET > TOTAL).

sitting_consider(PET_TYPE,FREETIME) :-
	(FREETIME = "YES"),petRec:pet_sitting(PET_TYPE) | (FREETIME="NO") 
	, petRec:(no_pet_sitting(PET_TYPE)).

fur_consider(PET_TYPE,WANT_FUR):-
	(WANT_FUR = "YES") , petRec:have_fur(PET_TYPE) 
	| (WANT_FUR = "NO") , petRec:no_fur(PET_TYPE).

flea_consider(PET_TYPE,ALLER_FLEA):-
	(ALLER_FLEA="YES"),petRec:(no_flea(PET_TYPE))
	|(ALLER_FLEA = "NO"), petRec:pet(PET_TYPE).

children_consider(PET_TYPE,HAVE_CHILDREN):-
	(HAVE_CHILDREN = "YES")
	,petRec:aggressive_lv(PET_TYPE,LV),(LV=1 | LV=2)
	,petRec:pet_size(PET_TYPE,SIZE),(SIZE = small | SIZE = medium)
	| (HAVE_CHILDREN = "NO"),petRec:pet(PET_TYPE).

resident_consider(PET_TYPE,RES):- (RES = "Condomimium"  | RES = "Condo")
	,petRec:pet_size(PET_TYPE,SIZE)
	,(SIZE = small) 
	,petRec:(no_sound(PET_TYPE)) 
	| (RES = "House"),petRec:pet(PET_TYPE).

noisy_consider(PET_TYPE,IS_NOISY):-
	(IS_NOISY = "YES"),petRec:have_sound(PET_TYPE)|
	(IS_NOISY = "NO" ,petRec:no_sound(PET_TYPE)).

pet_rec(PET_TYPE,IS_NOISY,ALLER_FLEA,FREETIME,MONEY,RES,HAVE_CHILDREN,WANT_FUR):-
	noisy_consider(PET_TYPE,IS_NOISY),
	flea_consider(PET_TYPE,ALLER_FLEA),
	sitting_consider(PET_TYPE,FREETIME),
	(feeding_3_month(PET_TYPE,MONEY)|(MONEY >= 0),(feeding_consider(PET_TYPE,MONEY))),
	resident_consider(PET_TYPE,RES),
	children_consider(PET_TYPE,HAVE_CHILDREN),
	fur_consider(PET_TYPE,WANT_FUR).








	