% Define the rules and facts

% Animal properties
has_fur(cat).
has_feathers(bird).
has_scales(snake).

% Animal types
mammal(X) :- has_fur(X).
bird(X) :- has_feathers(X).
reptile(X) :- has_scales(X).

% Inference rules
is_mammal(X) :- mammal(X).
is_mammal(X) :- animal(X), not(bird(X)), not(reptile(X)).

is_bird(X) :- bird(X).
is_bird(X) :- animal(X), not(mammal(X)), not(reptile(X)).

is_reptile(X) :- reptile(X).
is_reptile(X) :- animal(X), not(mammal(X)), not(bird(X)).

% Query
animal(cat).
animal(parrot).
animal(snake).

% Backward chaining
animal_type(X, mammal) :- is_mammal(X).
animal_type(X, bird) :- is_bird(X).
animal_type(X, reptile) :- is_reptile(X).

%animal_type(cat, Type).    
