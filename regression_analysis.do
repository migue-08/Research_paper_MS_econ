
// Load data

ls

clear

import delimited final_principal.csv

//----------------------------------------------------------------------------//
			** Regression tables analysis using estout **
			* To clear regression storage, type: 'eststo clear' *
//----------------------------------------------------------------------------//


// Model 1
* This model is the DiD regression of global score in ICFES SABER 11 on different covariates (family, institution, among other environment aspects). Found that some of the covariates have statistical significance.

eststo: quietly regress punt_global ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_global ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust

eststo: quietly regress punt_global_std ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_global_std ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust


** Exporting results
esttab using results1.rtf, se r2 label replace

eststo clear


// Model 2
* This model is the DiD regression of reading scores in ICFES SABER 11 on different covariates (family, institution, among other environment aspects). Found that some of the covariates have statistical significance.

eststo: quietly regress punt_lectura_critica ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_lectura_critica ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust

eststo: quietly regress punt_lectura_critica_std ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_lectura_critica_std ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust


** Exporting results
esttab using results2.rtf, se r2 label replace

eststo clear


// Model 3
* This model is the DiD regression of math scores in ICFES SABER 11 on different covariates (family, institution, among other environment aspects). Found that some of the covariates have statistical significance.

eststo: quietly regress punt_matematicas ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_matematicas ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust

eststo: quietly regress punt_matematicas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_matematicas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust


** Exporting results
esttab using results3.rtf, se r2 label replace

eststo clear


// Model 4
* This model is the DiD regression of english scores in ICFES SABER 11 on different covariates (family, institution, among other environment aspects). Found that some of the covariates have statistical significance.

eststo: quietly regress punt_ingles ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_ingles ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust

eststo: quietly regress punt_ingles_std ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_ingles_std ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust


** Exporting results
esttab using results4.rtf, se r2 label replace

eststo clear


// Model 5
* This model is the DiD regression of natural sciences scores in ICFES SABER 11 on different covariates (family, institution, among other environment aspects). Found that some of the covariates have statistical significance.

eststo: quietly regress punt_c_naturales ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_c_naturales ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust

eststo: quietly regress punt_c_naturales_std ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_c_naturales_std ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust


** Exporting results
esttab using results5.rtf, se r2 label replace

eststo clear


// Model 6
* This model is the DiD regression of social sciences scores in ICFES SABER 11 on different covariates (family, institution, among other environment aspects). Found that some of the covariates have statistical significance.

eststo: quietly regress punt_sociales_ciudadanas ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_sociales_ciudadanas ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust

eststo: quietly regress punt_sociales_ciudadanas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico, robust

eststo: quietly regress punt_sociales_ciudadanas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico edad estu_genero_f cole_bilingue fami_educacionmadre fami_educacionpadre cole_area_ubicacion_urbano cole_naturaleza_nooficial, robust


** Exporting results
esttab using results6.rtf, se r2 label replace

eststo clear



//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
