:- module(petRec,[]).

% Facts

% pet(pet_type).
pet(rabbit).
pet(horse).
pet(dog).
pet(cat).
pet(turtle).
pet(fish).
pet(chicken).
pet(hamster).
pet(bird).
pet(snake).
pet(guinea_pig).
pet(hedgehog).

% have_fur(pet_type)
have_fur(rabbit).
have_fur(horse).
have_fur(dog).
have_fur(cat).
have_fur(chicken).
have_fur(hamster).
have_fur(bird).

% no_fur(_type)
no_fur(fish).
no_fur(turtle).
no_fur(snake).
no_fur(guinea_pig).
no_fur(hedgehog).

% pet_price(pet_type, price)
pet_price(rabbit,600).
pet_price(horse,12000).
pet_price(dog,8000).
pet_price(cat,4000).
pet_price(fish,100).
pet_price(turtle,100).
pet_price(chicken,160).
pet_price(hamster,300).
pet_price(bird,1500).
pet_price(snake,3000).
pet_price(guinea_pig,3500).
pet_price(hedgehog,1200).

% price_per_month(pet_type, price)
price_per_month(rabbit,2000).
price_per_month(horse,11200).
price_per_month(dog,4400).
price_per_month(cat,2900).
price_per_month(turtle,3700).
price_per_month(fish,2000).
price_per_month(chicken,1000).
price_per_month(hamster,500).
price_per_month(bird,3800).
price_per_month(snake,3400).
price_per_month(guinea_pig,1500).
price_per_month(hedgehog,500).

% have_flea(pet_type)
have_flea(dog).
have_flea(cat).
have_flea(horse).
have_flea(rabbit).
have_flea(chicken).
have_flea(snake).

% no_flea(pet_type)
no_flea(turtle).
no_flea(fish).
no_flea(hamster).
no_flea(bird).
no_flea(guinea_pig).
no_flea(hedgehog).

% have_sound(pet_type)
have_sound(dog).
have_sound(horse).
have_sound(cat).
have_sound(chicken).
have_sound(bird).
have_sound(guinea_pig).

% no_sound(pet_type)
no_sound(fish).
no_sound(tutle).
no_sound(rabbit).
no_sound(hamster).
no_sound(snake).
no_sound(hedgehog).

% pet_sitting(pet_type)
pet_sitting(horse).
pet_sitting(cat).
pet_sitting(dog).
pet_sitting(hamster).
pet_sitting(guinea_pig).

% no_pet_sitting(pet_type)
no_pet_sitting(chicken).
no_pet_sitting(fish).
no_pet_sitting(rabbit).
no_pet_sitting(bird).
no_pet_sitting(snake).
no_pet_sitting(turtle).
no_pet_sitting(hedgehog).

% area_require(pet_type,size)
area_require(rabbit,small).
area_require(horse,big).
area_require(turtle,small).
area_require(dog,medium).
area_require(cat,medium).
area_require(fish,small).
area_require(chicken,small).
area_require(hamster,small).
area_require(bird,small).
area_require(snake,small).
area_require(guinea_pig,small).
area_require(hedgehog,small).

% pet_size(pet_type,size)
pet_size(horse,big).
pet_size(rabbit,small).
pet_size(dog,medium).
pet_size(cat,small).
pet_size(turtle,medium).
pet_size(fish,small).
pet_size(chicken,medium).
pet_size(hamster,small).
pet_size(bird,small).
pet_size(snake,medium).
pet_size(guinea_pig,medium).
pet_size(hedgehog,small).

% aggressive_lv(pet_type,level)
aggressive_lv(horse,2).
aggressive_lv(rabbit,1).
aggressive_lv(dog,2).
aggressive_lv(cat,2).
aggressive_lv(fish,1).
aggressive_lv(turtle,1).
aggressive_lv(chicken,1).
aggressive_lv(hamster,2).
aggressive_lv(bird,2).
aggressive_lv(snake,3).
aggressive_lv(guinea_pig,1).
aggressive_lv(hedgehog,1).







