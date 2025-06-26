## Empirical exercise

In order to reproduce the empirical exercise of this paper, you can clone [this GitHub repository][1] and apply learning from the attached code files. The first you need to know is that Saber11 dataset from ICFES is available [here][2], and the scholar census information from DANE is available in the following links [2019][3] and [2022][4]. You can find the required libraries to reproduce the notebooks [here][5]. Once you download the required information you can follow this tread:

1. To filter the Saber11 dataset only with the information for the years 2019 and 2022, you can follow the procedure of this [R document][6]. Then you can export the data.

2. Once you have filtered the Saber11 information, you can apply the first screenings to the dataset according to this [Notebook][7].

3. Now from the DANE scholar census we filter the educational institutions with access to computers and internet. You can do this based on this [Notebook][8].

4. Now you can merge the previous datasets into one aggregated dataframe, where you can also transform the required variables, standardize the individual test scores of the exams and create the summary statistics tables. You can do this following this [Notebook][9].

5. Finally, you can reproduce the regression analysis in STATA according to this [do file][10] or compute the coefficients with this [Notebook][16].

## Visualizations

You can also reproduce some of the graphs of the document:

* [Distribution of the Saber11 exams over the last years][11]

* [Total students enrolled in preschool and primary education][12]

* [Total students enrolled in secondary education][13]

* [Desertion rate][14]

## Additional exercise

With data from DANE scholar census, we computed the percentage change of total number of electronic devices as well as the rate of electronic devices per student enrolled:

* [Additional exercise][15]

[1]: https://github.com/migue-08/Research_paper_MS_econ
[2]: https://www.datos.gov.co/Educaci-n/Resultados-nicos-Saber-11/kgxf-xxbe/about_data
[3]: https://microdatos.dane.gov.co/index.php/catalog/669/get-microdata
[4]: https://microdatos.dane.gov.co/index.php/catalog/801/get-microdata
[5]: https://github.com/migue-08/Research_paper_MS_econ/raw/refs/heads/main/requirements.txt
[6]: https://migue-08.github.io/Research_paper_MS_econ/
[7]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Saber_11_Cleaning.ipynb
[8]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Acceso_tecnolog%C3%ADa_por_estudiante.ipynb
[9]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/merged.ipynb
[10]: https://github.com/migue-08/Research_paper_MS_econ/raw/refs/heads/main/regression_analysis.do
[11]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Grafico_distribucion_datos.ipynb
[12]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Matricula_ed_inic_bas_primaria.ipynb
[13]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Matricula_ed_bas_sec_media.ipynb
[14]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Tasa_deserci%C3%B3n.ipynb
[15]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Tasa_tecnolog%C3%ADa_por_estudiante.ipynb
[16]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/regression_coefs.ipynb