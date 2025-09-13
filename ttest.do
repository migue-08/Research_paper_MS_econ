// Load data

ls

clear

import delimited final_principal.csv

//----------------------------------------------------------------------------//
								**Ttest**
//----------------------------------------------------------------------------//

// Table 1 - By gender

foreach var in edad estu_inse_individual fami_educacionmadre fami_educacionpadre fami_tieneautomovil fami_tienecomputador fami_tieneinternet fami_tienelavadora cole_bilingue cole_area_ubicacion_rural cole_area_ubicacion_urbano cole_naturaleza_nooficial cole_naturaleza_oficial sedete_internet sedete_equipo_computo punt_c_naturales punt_global punt_ingles punt_lectura_critica punt_matematicas punt_sociales_ciudadanas {
ttest `var', by(estu_genero_m)
}

// Table 2 - By Type of school

foreach var in edad estu_genero_f estu_genero_m fami_educacionmadre fami_educacionpadre fami_tieneautomovil fami_tienecomputador fami_tieneinternet fami_tienelavadora cole_bilingue cole_area_ubicacion_rural cole_area_ubicacion_urbano sedete_internet sedete_equipo_computo punt_c_naturales punt_global punt_ingles punt_lectura_critica punt_matematicas punt_sociales_ciudadanas {
ttest `var', by(cole_naturaleza_oficial)
}

// Table 3 - By Area

foreach var in edad estu_genero_f estu_genero_m estu_inse_individual fami_educacionmadre fami_educacionpadre fami_tieneautomovil fami_tienecomputador fami_tieneinternet fami_tienelavadora cole_bilingue cole_naturaleza_nooficial cole_naturaleza_oficial sedete_internet sedete_equipo_computo punt_c_naturales punt_global punt_ingles punt_lectura_critica punt_matematicas punt_sociales_ciudadanas {
ttest `var', by(cole_area_ubicacion_urbano)
}

// Table 4 - By Year

foreach var in edad estu_genero_f estu_genero_m fami_educacionmadre fami_educacionpadre fami_tieneautomovil fami_tienecomputador fami_tieneinternet fami_tienelavadora cole_bilingue cole_area_ubicacion_rural cole_area_ubicacion_urbano cole_naturaleza_nooficial cole_naturaleza_oficial sedete_internet sedete_equipo_computo punt_c_naturales punt_global punt_ingles punt_lectura_critica punt_matematicas punt_sociales_ciudadanas {
ttest `var', by(ano_2022)
}

//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//