clear all
set more off
putpdf begin

import delimited df_combined.csv

preserve

log using combinedHurricaneRegression.log, replace nomsg

putpdf paragraph

reg weightedscore cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust


reg weightedscore i.cnn##c.damage i.msnbc##c.damage ///
i.cnn##c.deaths i.msnbc##c.deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust


logit ynscore cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust

reg count_cc cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust

reg count_gw cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust

log close