// Load data

ls

clear

import delimited final_principal.csv

//----------------------------------------------------------------------------//
			** Regression tables analysis using estout **
			* To clear regression storage, type: 'eststo clear' *
//----------------------------------------------------------------------------//

// Efectos fijos territoriales / sede
* Install if not installed ssc install reghdfe
* Install if not installed ssc install ftools

* Si el ID de sede es consistente entre años

local X edad estu_genero_f estu_inse_individual i.fami_educacionmadre i.fami_educacionpadre cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial

// Model 1

eststo: quietly reghdfe punt_global ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)

eststo: quietly reghdfe punt_global_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results1.rtf, se r2 label replace

eststo clear


// Model 2

eststo: quietly reghdfe punt_lectura_critica ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)

eststo: quietly reghdfe punt_lectura_critica_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results2.rtf, se r2 label replace

eststo clear


// Model 3

eststo: quietly reghdfe punt_matematicas ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)

eststo: quietly reghdfe punt_matematicas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results3.rtf, se r2 label replace

eststo clear


// Model 4

eststo: quietly reghdfe punt_ingles ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)

eststo: quietly reghdfe punt_ingles_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results4.rtf, se r2 label replace

eststo clear


// Model 5

eststo: quietly reghdfe punt_c_naturales ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)

eststo: quietly reghdfe punt_c_naturales_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results5.rtf, se r2 label replace

eststo clear


// Model 6

eststo: quietly reghdfe punt_sociales_ciudadanas ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)

eststo: quietly reghdfe punt_sociales_ciudadanas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', absorb(cole_cod_dane_sede) vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results6.rtf, se r2 label replace

eststo clear



//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
