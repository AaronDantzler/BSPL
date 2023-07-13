clear all
set more off
putpdf begin

import delimited df_drop.csv

preserve

log using droppedHurricaneRegression.log, replace nomsg

putpdf paragraph

reg weightedsentimentscore cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust

/*
logit sentimentynscore cnn msnbc damageinbillionsofdollars deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust
*/

reg weightedcommitmentscore cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust

/*
logit commitmentynscore cnn msnbc damageinbillionsofdollars deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust
*/

reg weightedspecscore cnn msnbc damage deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust
/*
logit specificityynscore cnn msnbc damageinbillionsofdollars deaths ///
arthur barry delta dorian eta ///
florence hanna harvey hermine irma laura michael ///
sally zeta, robust
*/

log close