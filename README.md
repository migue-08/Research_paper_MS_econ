## Empirical work

In order to reproduce the empirical work of this research paper, you can clone this GitHub repository using:

```
$ git clone https://github.com/migue-08/Research_paper_MS_econ.git
```

First you need to download the Saber11 datasets from DataIcfes [here][1], and the scholar census information from DANE in the following links [2019][2] and [2022][3]. Next, you need to create a virtual environment with the following [libraries][4] and latest python version to reproduce the notebooks. Once you download the required information you can follow these steps:

1. You must apply the first screenings to the Icfes datasets according to this [notebook][5].

2. Now, from the DANE scholar census we distinguish the educational institutions with access to computers and internet. You can do this based on this [notebook][6].

3. Next, you can merge the previous two dataframes into one aggregated, where you can also transform the required variables in the model, standardize the individual test scores of the exams and create the summary statistics tables ([and t tests][7]). You can do this following this [notebook][8].

4. Finally, you can reproduce the regression analysis in STATA according to this [do file][9]. 

5. Robustness checks are also available here:
    - Inverse probability weighting (IPW) [here][10]
    - For treatment decomposition analysis, you can follow this [do file][11].
    - Placebos are available [here][12]
    - Fixed effects by educational institution in this [do file][13]

## Visualizations

You can also reproduce some of the graphs of the research paper:

* [Total students enrolled in preschool and primary education][14]

* [Total students enrolled in secondary education][15]

* [Desertion rate][16]

## Additional exercise

With data from DANE scholar census, we computed the percentage change of total number of electronic devices as well as the rate of electronic devices per student enrolled:

* [Additional exercise][17]

[1]: https://www.icfes.gov.co/investigaciones/data-icfes/
[2]: https://microdatos.dane.gov.co/index.php/catalog/669/get-microdata
[3]: https://microdatos.dane.gov.co/index.php/catalog/801/get-microdata
[4]: https://github.com/migue-08/Research_paper_MS_econ/raw/refs/heads/main/requirements.txt
[5]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Saber_11_Cleaning.ipynb
[6]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Acceso_tecnolog%C3%ADa_por_estudiante.ipynb
[7]: https://raw.githubusercontent.com/migue-08/Research_paper_MS_econ/refs/heads/main/ttest.do
[8]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/merged.ipynb
[9]: https://github.com/migue-08/Research_paper_MS_econ/raw/refs/heads/main/regression_analysis.do
[10]: https://raw.githubusercontent.com/migue-08/Research_paper_MS_econ/refs/heads/main/ipw_year.do
[11]: https://raw.githubusercontent.com/migue-08/Research_paper_MS_econ/refs/heads/main/decomposition.do
[12]: https://raw.githubusercontent.com/migue-08/Research_paper_MS_econ/refs/heads/main/placebos.do
[13]: https://raw.githubusercontent.com/migue-08/Research_paper_MS_econ/refs/heads/main/fixed_effects_sede.do
[14]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Matricula_ed_inic_bas_primaria.ipynb
[15]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Matricula_ed_bas_sec_media.ipynb
[16]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Tasa_deserci%C3%B3n.ipynb
[17]: https://nbviewer.org/github/migue-08/Research_paper_MS_econ/blob/main/Tasa_tecnolog%C3%ADa_por_estudiante.ipynb