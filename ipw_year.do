// Load data

ls

clear

import delimited final_principal.csv

//----------------------------------------------------------------------------//
			** Regression tables analysis using estout **
			* To clear regression storage, type: 'eststo clear' *
//----------------------------------------------------------------------------//

// IPW simple por año

local X edad estu_genero_f estu_inse_individual i.fami_educacionmadre i.fami_educacionpadre cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial

* Probabilidad de "ser 2022" condicional en X (edad, genero, indice socio económico, edupadre, edumadre, ubicación colegio, tipo de colegio)
logit ano_2022 `X'
predict phat, pr

* Peso estabilidado
gen w_ipw = (ano_2022)*0.5/phat + (ano_2019)*0.5/(1-phat)

// Model 1
* Estimar DiD con pesos IPW y clustering nivel sede

eststo: quietly regress punt_global ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_global_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results1.rtf, se r2 label replace

eststo clear


// Model 2
* Estimar DiD con pesos IPW y clustering nivel sede

eststo: quietly regress punt_lectura_critica ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_lectura_critica_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results2.rtf, se r2 label replace

eststo clear


// Model 3
* Estimar DiD con pesos IPW y clustering nivel sede

eststo: quietly regress punt_matematicas ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_matematicas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results3.rtf, se r2 label replace

eststo clear


// Model 4
* Estimar DiD con pesos IPW y clustering nivel sede

eststo: quietly regress punt_ingles ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_ingles_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results4.rtf, se r2 label replace

eststo clear


// Model 5
* Estimar DiD con pesos IPW y clustering nivel sede

eststo: quietly regress punt_c_naturales ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_c_naturales_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results5.rtf, se r2 label replace

eststo clear


// Model 6
* Estimar DiD con pesos IPW y clustering nivel sede

eststo: quietly regress punt_sociales_ciudadanas ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_sociales_ciudadanas_std ano_2022 entorno_tecnologico _x_entorno_tecnologico `X' [pw=w_ipw], vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results6.rtf, se r2 label replace

eststo clear



//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
