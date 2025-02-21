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
`MAIN_SeasonalAdjustmentQNA.R` performs all steps needed for the seasonal adjustment of QNA aggregates. It calls all of the following steps:

#### Step 1 Loading Data
The script `Step1_LoadInput.R` loads the files into the Global Environment.

#### Step 2 Seasonal Adjustment
The scripts `Step2_Bereinigung_xxx.R` perform the adjustments using the `persephone` package.

#### Step 3 Computing Sums
The scripts `Step3_Berechnungen_T01xxx.R` derive adjusted series at cup and sums of aggregates.
Series at cup are derived by multiplying adjusted vol series and deflators. Volume series are only defined for non-negative aggregates, 
so in those cases the series are adjusted at current prices. As volume series are not additive we need adjusted series at pyp to derive sums of aggregates. 
We follow the [Handbook for quarterly national accounts](https://ec.europa.eu/eurostat/documents/3859598/5936013/KS-GQ-13-004-EN.PDF/3544793c-0bde-4381-a7ad-a5cfe5d8c8d0) (§7.93) and use the seasonal factors of volume series to derive adjusted pyp series. 
Except for chainlinked Volumes (vol/L) values can be added up to get any desired aggregation. 

### Data
The folder `data` contains the tables compiled and published by STAT. Files can be imported using `load()`. The naming of variables is based on SDMX codes.

Price valuations are denoted in the following way: 

|Code|English|Deutsch|
|:-|:-|:-|
|V|current prices (cup)|nominell (nom)|
|Y|previous year prices (pyp)|Vorjahrespreise (vjp)|
|L|chainlinked Volumes (vol)|Verkette Volumen (vol)|

#### GDP/ Taxes and Subsidies
The object `bip`contains taxes and subsidies, to get from GVA to GDP, as well as GDP. It contains a list with 4 elements referring to cup/V, pyp/Y and vol/L values as published by STAT, as well as "PI" referring to the implicit deflator cup/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|B1GQ|GDP|
|D21|Taxes on Products|
|D31|Subsidies on Products|
|D2|Taxes on production and imports (only cup)|
|D3|Subsidies on production and imports (only (cup)|

#### Gross Value Added
The object `b1g` contains gross value added (GVA) over all economic activities. It contains a list with 4 elements referring to cup/V, pyp/Y and vol/L values as published by STAT, as well as "PI" referring to the implicit deflator cup/vol. Each list-element contains a time series table with the colnames referring to economic activities according to NACE Rev.2

#### Final Consumption Expenditure
The object `konsum` contains final consumption expenditure (P3) by institutional sector and counterpart. It contains a list with 4 elements referring to cup/V, pyp/Y and vol/L values as published by STAT, as well as "PI" referring to the implicit deflator cup/vol. Each list-element contains a time series table with the following columns:

|Colname|Final Consumption expenditure of...|
|:-|:-|
|S13_P31_W0| General Government: Individual consumption|
|S13_P32_W0| General Government: Collective  consumption|
|S14_P31_W0| Resident households (national concept)|
|S14_P31_W1| Residents in the ROW less Non-residents on economic territory|
|S14_P311_W2| Households (domestic concept): Durable goods|
|S14_P312_W2| Households (domestic concept): Semi-durable goods|
|S14_P313_W2| Households (domestic concept): Non-durable goods|
|S14_P314_W2| Households (domestic concept): Services|
|P31_S14| Non Profit Institutions serving Households (NPISH) |

#### Gross Capital Formation
The object `invest` contains Gross capital formation (P5) by Instrument Asset. It contains a list with 4 elements referring to cup/V, pyp/Y and vol/L values as published by STAT, as well as "PI" referring to the implicit deflator cup/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|N1G|Total gross capital formation|
|N11G|Total gross fixed capital formation|
|N111G|... of Dwellings|
|N112G|... of other buildings and structures|
|N1131G|... of Transport equipment|
|N1132G|... of ICT equipment|
|AN115|... of Cultivated biological resources|
|AN117|... of Intellectual property products|
|N11OG|... of Other machinery and equipment+weapon systems |
|N12G|Changes in inventories|
|N13G|Acquisitions less disposals of valuables|


#### External Trade
The object `ah` contains External trade by counterpart. It contains a list with 4 elements referring to cup/V, pyp/Y and vol/L values as published by STAT, as well as "PI" referring to the implicit deflator cup/vol. Each list-element contains a time series table with the following columns:

|Colname|Aggregate|
|:-|:-|
|P6_I9| Exports to Euro area (Member States and Institutions of the Euro Area) fixed composition|
|P6_K11| Exports to Intra EU Extra Euro Area (EU member states and institutions not belonging to the Euro area) fixed composition|
|P6_D6| Exports to Extra-EU (fixed composition)|
|P61_W1|Total Export of Goods|
|P62_W1|Total Export of Services|
|P7_I9| Imports to Euro area (Member States and Institutions of the Euro Area) fixed composition|
|P7_K11| Imports to Intra EU Extra Euro Area (EU member states and institutions not belonging to the Euro area) fixed composition|
|P7_D6| Imports to Extra-EU (fixed composition)|
|P71_W1|Total Imports of Goods|
|P72_W1|Total Imports of Services|
  
#### Compensation of employees by industry
The object `vtD1` contains data on compensation of employees by industry trade by counterpart. It contains a time series table where column names are pasted as type of compensation, unit measure, counterpart area and activity (according to A*10 NACE Rev.2). eg. `D1_XDC_W2_A`

|Abb.|Type of Compensation|
|:-|:-|
|D1|Total compensation of employees|
|D11| Wages and salaries|
|D12| Employers' social contributions|

`_XDC_W2` refers to domestic currency (€) and domestic concept.


#### Employment
The object `av` contains data on employment by industry trade by counterpart. It contains a time series table where column names are pasted as type of employment, unit measure, counterpart area and activity (according to A*10 NACE Rev.2). eg. `SALxHWxW2xA`

|Abb.|Type of employment|
|:-|:-|
|EMP|Total Employment|
|SAL|Employees|
|SELF|Self-employed|

|Abb.|Unit Measure|
|:-|:-|
|HW|Hours Worked|
|JB|Jobs|
|PS|Persons|



## Glossary
|English abb.|German abb.| |
|:-|:-|:---|
|cup|nom|current prices|
|GDP|BIP|Gross Domestic Product (Bruttoinlandsprodukt)|
|GVA|BWS|Gross Value Added (Bruttowertschöpfung)|
|NPISH|NPO|Non-Profit-Organizations|
|pyp|vjp|previous year prices|
|QNA|QVGR| Quarterly National Accounts|
|vol|vol|chainlinked volumes|

