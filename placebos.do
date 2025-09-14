// Load data

ls

clear

import delimited final_principal.csv

//----------------------------------------------------------------------------//
			** Regression tables analysis using estout **
			* To clear regression storage, type: 'eststo clear' *
//----------------------------------------------------------------------------//

// Placebos

local X edad estu_genero_f estu_inse_individual i.fami_educacionmadre i.fami_educacionpadre cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial


// Placebo 1
* Placebo grupo: restringe a sedes con TIC==0 en 2019 y 2022

keep if sede_ti==0

eststo: quietly regress punt_global ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_global_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results1.rtf, se r2 label replace

eststo clear


// Placebo 2
* Placebo outcome: variable demográfica (por ejemplo sexo) el coeficiente debe ser 0

keep if estu_genero_f==0

eststo: quietly regress punt_global ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_global_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X', vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results2.rtf, se r2 label replace

eststo clear

//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
