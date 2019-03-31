:- module(petRec,[]).

% Facts

% pet(pet_type).
pet(rabbit).
pet(horse).
pet(dog).
pet(cat).
pet(turtle).
pet(fish).

% have_fur(pet_type)
have_fur(rabbit).
have_fur(horse).
have_fur(dog).
have_fur(cat).

% no_fur(_type)
no_fur(fish).
no_fur(turtle).

% need_care(pet_type)
need_care(rabbit).
need_care(horse).
need_care(dog).
need_care(cat).

% pet_price(pet_type, price)
pet_price(rabbit,600).
pet_price(horse,12000).
pet_price(dog,8000).
pet_price(cat,4000).
pet_price(fish,100).
pet_price(turtle,100).

% price_per_month(pet_type, price)
price_per_month(rabbit,2000).
price_per_month(horse,11200).
price_per_month(dog,4400).
price_per_month(cat,2900).
price_per_month(turtle,3700).
price_per_month(fish,2000).

% have_flea(pet_type)
have_flea(dog).
have_flea(cat).
have_flea(horse).
have_flea(rabbit).

% no_flea(pet_type)
no_flea(turtle).
no_flea(fish).

% have_sound(pet_type)
have_sound(dog).
have_sound(horse).
have_sound(cat).

% pet_sitting(pet_type,time)
pet_sitting(horse).
pet_sitting(cat).
pet_sitting(dog).

% area_require(pet_type,size)
area_require(rabbit,small).
area_require(horse,big).
area_require(turtle,small).
area_require(dog,medium).
area_require(cat,medium).
area_require(fish,small).

% pet_size(pet_type,size)
pet_size(horse,big).
pet_size(rabbit,small).
pet_size(dog,medium).
pet_size(cat,small).
pet_size(turtle,medium).
pet_size(fish,small).

% aggressive_lv(pet_type,level)
aggressive_lv(horse,2).
aggressive_lv(rabbit,1).
aggressive_lv(dog,2).
aggressive_lv(cat,2).
aggressive_lv(fish,1).
aggressive_lv(turtle,1).








