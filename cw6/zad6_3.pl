liczba_wezlow(nil, 0).
liczba_wezlow(d(_, L, R), S):- liczba_wezlow(L, S1), liczba_wezlow(R, S2), S is S1 + S2 + 1.
