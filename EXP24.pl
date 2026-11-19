% Diet Suggestion System Based on Disease

% Diet suggestions
diet(diabetes, 'Low sugar and high fibre food').
diet(blood_pressure, 'Low salt and low fat food').
diet(obesity, 'Low calorie and high protein food').
diet(heart_disease, 'Low fat and low cholesterol food').
diet(anemia, 'Iron rich food like spinach and dates').

% Rule to suggest diet
suggest_diet(Disease) :-
    diet(Disease, Food),
    write('Disease: '),
    write(Disease),
    nl,
    write('Suggested Diet: '),
    write(Food),
    nl.

suggest_diet(Disease) :-
    \+ diet(Disease, _),
    write('No diet suggestion available.').

% Main program
main :-
    write('Enter Disease: '),
    read(Disease),
    suggest_diet(Disease).
