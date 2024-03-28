# SpringBank Drive Road Widening Project: Property Compensation Analysis

## Context
London, a city in southwestern Ontario, Canada, is planning to widen Springbank Drive from two to four lanes between Horton Street and Wonderland Road. With heavy traffic of 24,000 cars per day, the project aims to alleviate congestion. However, this expansion will impact residential properties along the route. The primary concern is estimating fair compensation for affected property owners to prevent delays in the project.

## Technical Report Overview
Technical report provides insights into the methodology, model, results, implications, and limitations of the compensation analysis conducted. Our analysis focuses on a sample of 104 residential properties around Springbank Drive from January 1998 to May 2003. Key variables include past sale prices, traffic counts, number of lanes, frontage area, house type, streetscape, interior condition, and basement finished area.

## Methodology and Model
To determine fair compensation, a multiple regression model was developed using R. This model incorporates various property attributes that influence market value. Variables such as traffic count, number of lanes, frontage area, streetscape, interior condition, house type, and basement finished area were included. Two models were considered to account for multicollinearity issues: one with traffic count and another with number of lanes as independent variables.

## Results and Implications

Both models showed a positive relationship between frontage area and property price. However, traffic count and number of lanes had negative effects on property value. The regression models provided insights into the impact of these variables on compensation amounts. Based on the analysis, alternative compensation amounts were estimated using mathematical expressions.

#### Model 1
Compensation = Lump sum value + Value of the lost frontage area + Loss in property value because of increased traffic

= 12000 + 36.00 * Lost Frontage + 0.78 * Increased Traffic Count

#### Model 2
Compensation = Lump sum value + Value of the lost frontage area + Loss in property value associated with the increased number of lanes

= 12000 + 37.91 * Lost Frontage + 6199.53 * Increase in number of lanes

## Limitations
Despite efforts to capture relevant data, limitations exist. The regression model's reliance on historical data may not account for future changes in property values. Additionally, the selection of variables may overlook other factors influencing property prices. These limitations underscore the need for cautious interpretation and consideration when determining compensation amounts.

## Conclusion
The compensation analysis provides valuable insights for policymakers and stakeholders involved in the Springbank Drive road widening project. By addressing property owners' concerns and ensuring fair compensation, the project can proceed smoothly while benefiting both the government and residents.

#### Comprehensive Report
[Springbank drive Analysis.pdf](https://github.com/srimallipudi/SpringBank-Drive-Property-Compensation-Analysis/files/14796313/Springbank.drive.Analysis.pdf)
