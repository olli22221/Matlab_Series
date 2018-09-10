function[augensumme] = wuerfelbecher(wuerfel, wuerfe, augenziffer)
augensumme = randi([1,augenziffer],wuerfe,wuerfel);
augensumme = sum(augensumme,2);
augensumme = reshape(augensumme,1,wuerfe);
end