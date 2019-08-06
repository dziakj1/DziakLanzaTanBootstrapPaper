OPTIONS MLOGIC;
%INCLUDE "C:\Documents and Settings\jjd264\My Documents\Paper-LanzaDziakTanMin\Resubmit\FindEffectSizes.sas";
 
DATA gammas;
    INPUT gamma;
	DATALINES;
	.6
	.3
	.1
	;
RUN;
DATA rhos;
    INPUT rho01 rho02 rho03;
	DATALINES;
    .2 .8 .8
    .2 .8 .8
    .2 .8 .8
    .2 .2 .8
    .2 .2 .8	
;

%FindEffectSizes(gammas=gammas,
                 rhos=rhos,
                 nstarts=200); 
