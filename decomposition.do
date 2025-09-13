// Load data

ls

clear

import delimited final_principal.csv

//----------------------------------------------------------------------------//
			** Regression tables analysis using estout **
			* To clear regression storage, type: 'eststo clear' *
//----------------------------------------------------------------------------//

// Data preparation for regression
* Let's create temporary dummy variables for categorical variables:

tostring fami_estratovivienda, replace

tostring fami_educacionmadre, replace

tostring fami_educacionpadre, replace

tostring estu_nse_establecimiento, replace

tostring estu_nse_individual, replace

encode fami_estratovivienda, gen (estrato)

encode fami_educacionmadre, gen (edumadre)

encode fami_educacionpadre, gen (edupadre)

encode estu_nse_establecimiento, gen (nse_establecimiento)

encode estu_nse_individual, gen (nse_individual)

// Model 1 with decomposition of treatment

eststo: quietly regress punt_global ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_global_std ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results1.rtf, se r2 label replace

eststo clear


// Model 2 with decomposition of treatment

eststo: quietly regress punt_lectura_critica ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_lectura_critica_std ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results2.rtf, se r2 label replace

eststo clear


// Model 3 with decomposition of treatment

eststo: quietly regress punt_matematicas ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_matematicas_std ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results3.rtf, se r2 label replace

eststo clear


// Model 4 with decomposition of treatment

eststo: quietly regress punt_ingles ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_ingles_std ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results4.rtf, se r2 label replace

eststo clear


// Model 5 with decomposition of treatment

eststo: quietly regress punt_c_naturales ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_c_naturales_std ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results5.rtf, se r2 label replace

eststo clear


// Model 6 with decomposition of treatment

eststo: quietly regress punt_sociales_ciudadanas ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)

eststo: quietly regress punt_sociales_ciudadanas_std ano_2022 hogar_ti sede_ti entorno_tecnologico _x_hogar_ti _x_sede_ti _x_entorno_tecnologico edad estu_genero_f estu_inse_individual i.nse_establecimiento i.nse_individual i.edumadre i.edupadre i.estrato cole_bilingue cole_area_ubicacion_urbano cole_naturaleza_nooficial, vce(cluster cole_cod_dane_sede)


** Exporting results
esttab using results6.rtf, se r2 label replace

eststo clear



//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
