## Empirical work

In order to reproduce the empirical work of this research paper, you can clone this GitHub repository using:

```
$ git clone https://github.com/migue-08/Research_paper_MS_econ.git
```

First you need to download the Saber11 dataset from ICFES [here][1], and the scholar census information from DANE in the following links [2019][2] and [2022][3]. You can find the required libraries to reproduce the notebooks [here][4]. Once you download the required information you can follow this steps:

1. To filter the Saber11 dataset only with the information for the years 2019 and 2022, you can follow the procedure of this [R document][5]. Then you can export the data.

2. Once you have filtered the Saber11 information, you can apply the first screenings to the dataset according to this [notebook][6].

3. Now, from the DANE scholar census we filter the educational institutions with access to computers and internet. You can do this based on this [notebook][7].

4. Next, you can merge the previous two dataframes into one aggregated, where you can also transform the required variables, standardize the individual test scores of the exams and create the summary statistics tables. You can do this following this [notebook][8].

5. Finally, you can reproduce the regression analysis in STATA according to this [do file][9] or compute the coefficients based on this [notebook][10].

## Visualizations

You can also reproduce some of the graphs of the research paper:

* [Distribution of the Saber11 exams over the last years][11]

* [Total students enrolled in preschool and primary education][12]

* [Total students enrolled in secondary education][13]

* [Desertion rate][14]

## Additional exercise

With data from DANE scholar census, we computed the percentage change of total number of electronic devices as well as the rate of electronic devices per student enrolled:

* [Additional exercise][15]

[1]: https://www.datos.gov.co/Educaci-n/Resultados-nicos-Saber-11/kgxf-xxbe/about_data
[2]: https://microdatos.dane.gov.co/index.php/catalog/669/get-microdata
[3]: https://microdatos.dane.gov.co/index.php/catalog/801/get-microdata
[4]: https://github.com/migue-08/Research_paper_MS_econ/raw/refs/heads/main/requirements.txt
[5]: https://migue-08.github.io/Research_paper_MS_econ/
[6]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Saber_11_Cleaning.ipynb
[7]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Acceso_tecnolog%C3%ADa_por_estudiante.ipynb
[8]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/merged.ipynb
[9]: https://github.com/migue-08/Research_paper_MS_econ/raw/refs/heads/main/regression_analysis.do
[10]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/regression_coefs.ipynb
[11]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Grafico_distribucion_datos.ipynb
[12]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Matricula_ed_inic_bas_primaria.ipynb
[13]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Matricula_ed_bas_sec_media.ipynb
[14]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Tasa_deserci%C3%B3n.ipynb
[15]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Tasa_tecnolog%C3%ADa_por_estudiante.ipynb
