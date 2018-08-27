[messwerte,relative_haeufigkeiten] = normiertes_hist([2 3 4 1 1 6 5 5 6 3 5 2 4]);
modalwert = modal(relative_haeufigkeiten,messwerte);
mittelwert = mittelwert(relative_haeufigkeiten,messwerte);
standardabweichung = standardabweichung(relative_haeufigkeiten,messwerte);
