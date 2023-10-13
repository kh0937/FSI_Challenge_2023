# FSI_Project: Deep learning with variable selection
##  Project outline
In this project, we develop an EV purchase prediction model, primarily using MLP and tree-based algorithms to derive insights on EV purchase prediction and key variables. It is also grouped by deep learning-based clustering in different ways, analyzing the characteristics associated with each group's electric vehicle retention rate. This will enable us to gain an in-depth understanding of EV buying trends and establish effective marketing strategies and sales plans. This process is expected to have a variety of practical effects, including sales forecasting, inventory management, and improved customer service.
##  Data Description
We used data consisting of 49491 rows and 212 columns for the purchase price of electric vehicles. At this time, each row consisted of grouped information of customers sharing the same key for quarter, residence, gender, and age, and the information for each column is as follows.

- Gender, place of residence, quarter, age group (demographic sociological variable)
- Population information including information such as income, household type, and vehicle ownership
- Information containing the number of loans, type of consumption, etc
- Hobby information such as travel, shopping, games, etc
- Variables including the amount and number of car-related uses

Since there is an issue of data security in this data competition, accurate information of data will be omitted.

## Preprocessing
First, our data confirmed that many variables have missing values. Therefore, the following criteria were established and the missing values were processed according to the criteria.

- The MICE algorithm is used as an alternative algorithm for missing values, in which case the missing value pattern must be random. However, when the threshold value of the missing value is set to 15%, it was confirmed that a specific pattern exists in the missing value pattern of some variables.
- Among the missing value thresholds of 5 and 10%, VSURF, autoencoder, and image conversion techniques of structured data, which are techniques to be used for analysis, are the analysis techniques to be proposed in this project, so the conservative figure was set to 5%.

Processing of identification code

- In the data, there are variables representing the reference time point and variables representing the demographic and sociological characteristics of a particular customer group, such as residence period, age group, and gender. These variables were treated as follows.
- Code of residence-related variables Translate the part entered as legal dong administrative code using a one-hot encoding method and remove existing variables
- In the case of a variable representing a point in time, it is converted into an ordinal variable because it has temporal characteristics
- For the rest of the variables, use it as it is because it shows a numeric encoded value

In addition to MICE, it was also decided to add a dataset that replaced missing values using the average replacement method separately and apply both the MICE method and the average replacement method to analysis to conduct performance comparison.

##  Analysis
##  Visualization
##  Conclusion
##  Reference
The papers referenced for this analysis and the modeling techniques actually used are as follows.

- Sparse-Input Neural Networks for High-dimensional Nonparametric Regression and Classification (Jean Feng, 2017)
- Variable Selection via Penalized Neural Network: a Drop-Out-One Loss Approach (Mao Ye, 2018)
- Consistent Feature Selection for Analytic Deep
Neural Networks (Vu Dinh, 2020)
- VSURF: An R Package for Variable
Selection Using Random Forests (Robin Genuer, 2015)
- Autoencoders, Unsupervised Learning, and Deep
Architectures (Pierre Baldi, 2012)
- RANDOM FORESTS (Leo Breiman, 2001)
- LightGBM: A Highly Efficient Gradient Boosting Decision Tree (Guolin Ke, 2017) 
- XGBoost: A Scalable Tree Boosting System (Tianqi Chen, 2016)
- CatBoost: unbiased boosting with categorical features (Liudmila Prokhorenkova, 2017)
