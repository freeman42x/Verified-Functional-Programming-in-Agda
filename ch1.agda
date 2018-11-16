module ch1 where

data 𝔹 : Set where
 tt : 𝔹
 ff : 𝔹

_||_ : 𝔹 -> 𝔹 -> 𝔹
tt || _ = tt
ff || b = b



data day : Set where
  monday : day
  tuesday : day
  wednesday : day
  thursday : day
  friday : day
  saturday : day
  sunday : day

nextday : day -> day
nextday monday = tuesday
nextday tuesday = wednesday
nextday wednesday = thursday
nextday thursday = friday
nextday friday = saturday
nextday saturday = sunday
nextday sunday = monday



data suit : Set where
  hearts : suit
  spades : suit
  diamonds : suit
  clubs : suit

is-red : suit -> 𝔹
is-red hearts = tt
is-red spades = ff
is-red diamonds = tt
is-red clubs = ff
