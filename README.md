# SeasonalAdjustmentQNA
With the R code in this repository users can reproduce the seasonal adjustment of Quarterly National Accounts (QNA) at STAT. For detailed description of Methods see the [QNA Inventory](http://www.statistik.at/wcm/idc/idcplg?IdcService=GET_PDF_FILE&RevisionSelectionMethod=LatestReleased&dDocName=024047)

### Requirements
The following packages have to be installed from github:

[persephone](https://github.com/statistikat/persephone)
```
devtools::install_github("statistikat/persephone")
```

[chainSTAT](https://github.com/statistikat/chainSTAT)
```
devtools::install_github("statistikat/chainSTAT")
```


### How to use this Code
`MAIN Saisonbereinigung.R` performs all steps needed for the seasonal adjustment of QNA aggregates and calculates the sums. It calls all of the following steps:

#### Step 1 Loading Data
The script `Step1_LoadInput.R` loads the files into the Global Environment.

#### Step 2 Seasonal Adjustment
The scripts `Step2_Bereinigung_T01xxx.R` perform the adjustments using the `persephone` package.

#### Step 3 Computing Sums
The scripts `Step3_Berechnungen_T01xxx.R` derive adjusted series at cup and sums of aggregates. Series at cup are derived by multiplying adjusted vol series and deflators. Volume series are only defined for non-negative aggregates, so in those cases the series are adjusted at current prices. As volume series are not additive we need adjusted series at pyp to derive sums of aggregates. We follow the [Handbook for quarterly national accounts](https://ec.europa.eu/eurostat/documents/3859598/5936013/KS-GQ-13-004-EN.PDF/3544793c-0bde-4381-a7ad-a5cfe5d8c8d0) (§7.93) and use the seasonal factors of volume series to derive adjusted pyp series. 

### Data
The folder `data` contains the tables compiled by STAT and transmitted to Eurostat. Files can be imported using `load()`.

#### T101
Table 101 refers to the production side of GDP. The file `T101.R` contains a list with 4 elements referring to cup, pyp and vol values as transmitted to Eurostat and published by STAT, as well as "impPI_L" referring to the implicit deflator nom/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|BIP|GDP|
|GVA| Gross Value Added (total of all activities)|
|A to RTU| GVA of respective activities according to NACE Rev.2|
|D21| Taxes on Products|
|D31| Subsidies on Products|
|D21X31| Taxes less Subsidies on Products|

#### T102
Table 102 refers to the expenditure side of GDP. The file `T102.R` contains a list with 4 elements referring to cup, pyp and vol values as transmitted to Eurostat and published by STAT, as well as "impPI_L" referring to the implicit deflator nom/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|BIP|GDP|
|P3| Final consumption expenditure|
|P31| Private consumption expenditure|
|P31_S14| Household consumption|
|P31_S14| Consumption of NPISH|
|P3_S13| Consumption of general Government|
|P31_S13| Individual government consumption|
|P32_S13| Collective government consumption|
|P41| Actual individual consumption (P31+P31_S13)|
|P5|Total gross capital formation|
|BAI|Total gross fixed capital formation|
|AN111|...of Dwellings|
|AN112|... of other buildings and structures|
|AN113|... of Total Machinery and equimpent+weapon system|
|N1131G|... of Transport equipment|
|N1132G|... of ICT equipment|
|N11OG|... of Other machinery and equipment+weapon systems |
|AN115|... of Cultivated biological resources|
|AN117|... of Intellectual property products|
|P5M|Changes in inventories + acquisitions less disposals of valuables|
|P52|Changes in inventories|
|N13G|Acquisitions less disposals of valuables|
|P6|Total Exports|
|P61|Export of Goods|
|P62|Export of Services|
|P7|Total Imports|
|P71|Imports of Goods|
|P72|Imports of Services|
|B11|External balance of goods and services|
|YA0|Statistical discrepancy|
  
#### T103
Table 103 refers to the income side of GDP, which only contains current price values. The file `T103.R` contains a time series table where column names are:

|Colname|Aggregate|
|:-|:-|
|BIP|GDP|
|D2| Taxes on production and imports|
|D3| Subsidies on production and imports|
|D2XD3| Taxes less subsidies on production and imports|
|B2A3G| Gross operating surplus and mixed income|

The other column names are pasted as type of compensation, unit measure, counterpart area and activity (according to A*10 NACE Rev.2). eg. `D1_XDC_W2_A`

|Abb.|Type of Compensation|
|:-|:-|
|D1|Total compensation of employees|
|D11| Wages and salaries|
|D12| Employers' social contributions|

`_XDC_W2` refers to domestic currency (€) and domestic concept.

#### T110
Table 110 refers to the population (National Concept). The file `T110.R` contains a time series table where column names are:

|Colname|Aggregate|
|:-|:-|
|EMP_PS_W0__T|Total Employment (National Concept)|
|SAL_PS_W0__T|Total Employees (National Concept)|
|SELF_PS_W0__T|Total Self-employed (National Concept)|
|POP| Population|

#### T111
Table 111 refers to employment (domestic concept). The file `T111.R` contains a time series table where column names are pasted as type of employment, unit measure, counterpart area and activity (according to A*10 NACE Rev.2). eg. `SAL_HW_W2_A`

|Abb.|Type of employment|
|:-|:-|
|EMP|Total Employment|
|SAL| Employees|
|SELF|Self-employed|

|Abb.|Unit Measure|
|:-|:-|
|HW|Hours Worked|
|JB|Jobs|
|PS|Persons|

#### T117
Table 117 refers to the final consumption expenditure of households (domestic concept). The file `T117.R` contains a list with 4 elements referring to cup, pyp and vol values as transmitted to Eurostat and published by STAT, as well as "impPI_L" referring to the implicit deflator nom/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|P31_S14|Final consumption expenditure of households|
|P311| Durable goods|
|P31K| Other (not durable Goods) = P312 + P313 + P314|
|P312| Semi-durable goods|
|P313| Non-durable goods|
|P314| Services|

#### T120
Table 120 refers to Exports. The file `T120.R` contains a list with 4 elements referring to cup, pyp and vol values as transmitted to Eurostat and published by STAT, as well as "impPI_L" referring to the implicit deflator nom/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|P6|Total Exports|
|P6_B0| Exports to EU Member States (evolving composition) incl. EU institutions|
|P6_U2| Exports to Euro area (Member States and Institutions of the Euro Area) changing composition|
|P6_U3| Exports to Intra EU Extra Euro Area (EU member states and institutions not belonging to the Euro area) changing composition|
|P6_D0| Exports to Extra-EU (evolving composition)|

#### T121
Table 121 refers to Imports. The file `T121.R` contains a list with 4 elements referring to cup, pyp and vol values as transmitted to Eurostat and published by STAT, as well as "impPI_L" referring to the implicit deflator nom/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|P7|Total Imports|
|P7_B0| Imports to EU Member States (evolving composition) incl. EU institutions|
|P7_U2| Imports to Euro area (Member States and Institutions of the Euro Area) changing composition|
|P7_U3| Imports to Intra EU Extra Euro Area (EU member states and institutions not belonging to the Euro area) changing composition|
|P7_D0| Imports to Extra-EU (evolving composition)|


## Glossary
|English abb.|German abb.| |
|:-|:-|:---|
|cup|nom|current prices|
|GDP|BIP|Gross Domestic Product (Bruttoinlandsprodukt)|
|NPISH|PDoE|Non-Profit-Organizations|
|pyp|vjp|previous year prices|
|QNA|QVGR| Quarterly National Accounts|
|vol|vol|chainlinked volumes|

