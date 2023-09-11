% Define the rules and facts

% Animal properties
has_fur(cat).
has_feathers(bird).
has_scales(snake).

% Animal types
animal_type(X, mammal) :- has_fur(X).
animal_type(X, bird) :- has_feathers(X).
animal_type(X, reptile) :- has_scales(X).

% Query
animal(cat).
animal(parrot).
animal(snake).

% Forward chaining
animal_type(X, Type) :- animal(X), has_fur(X), Type = mammal.
animal_type(X, Type) :- animal(X), has_feathers(X), Type = bird.
animal_type(X, Type) :- animal(X), has_scales(X), Type = reptile.

%animal_type(cat, Type).
