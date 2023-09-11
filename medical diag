symptom('Flu').
symptom('Yellowish eyes and skin').
symptom('Dark color urine').
symptom('Pale bowel movement').
symptom('Fatigue').
symptom('Vomitting').
symptom('Fever').
symptom('Pain in joints').
symptom('Weakness').
symptom('Stomach Pain').

treatment('Flu', 'Drink hot water, avoid cold eatables.').
treatment('Yellowish eyes and skin', 'Put eye drops, have healthy sleep, do not strain your eyes.').
treatment('Dark color urine', 'Drink lots of water, juices and eat fruits. Avoid alcohol consumption.').
treatment('Pale bowel movement', 'Drink lots of water and exercise regularly.').
treatment('Fatigue', 'Drink lots of water, juices and eat fruits.').
treatment('Vomitting', 'Drink salt and water.').
treatment('Fever', 'Put hot water cloth on head and take crocin.').
treatment('Pain in Joints', 'Apply pain killer and take crocin.').
treatment('Weakness', 'Drink salt and water, eat fruits.').
treatment('Stomach Pain', 'Avoid outside food and eat fruits.').

diagnose(Symptoms, Disease, Treatment) :-
    disease(Disease),
    forall(member(Symptom, Symptoms), has_symptom(Disease, Symptom)),
    treatment(Disease, Treatment).

has_symptom(Disease, Symptom) :-
    disease_symptom(Disease, Symptoms),
    member(Symptom, Symptoms).

disease_symptom('Flu', ['Flu', 'Fever']).
disease_symptom('Yellowish eyes and skin', ['Yellowish eyes and skin']).
disease_symptom('Dark color urine', ['Dark color urine']).
disease_symptom('Pale bowel movement', ['Pale bowel movement']).
disease_symptom('Fatigue', ['Fatigue']).
disease_symptom('Vomitting', ['Vomitting']).
disease_symptom('Fever', ['Fever']).
disease_symptom('Pain in Joints', ['Pain in joints']).
disease_symptom('Weakness', ['Weakness']).
disease_symptom('Stomach Pain', ['Stomach Pain']).

disease('Flu').
disease('Yellowish eyes and skin').
disease('Dark color urine').
disease('Pale bowel movement').
disease('Fatigue').
disease('Vomitting').
disease('Fever').
disease('Pain in Joints').
disease('Weakness').
disease('Stomach Pain').

%diagnose(['Flu', 'Fever'], Disease, Treatment).
