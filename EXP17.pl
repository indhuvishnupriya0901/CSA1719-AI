sum_n(0, 0).

sum_n(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_n(N1, S1),
    Sum is N + S1.

main :-
    write('Enter N: '),
    read(N),
    sum_n(N, Sum),
    write('Sum = '),
    write(Sum).
