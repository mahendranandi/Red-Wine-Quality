# Red-Wine-Quality

![redwine](Images/red_wine.png)


# 
# Understanding the relevance of the topic:
We first understand the relevance of the dataset and project. Though our inital goal will bo to focous on features given and try to find relations among them, then will go deeper to find some sharp and important factors for business purpose. There are many countries where soft and hard drinks are still a major or the only product in holding the GDP of the country. We know the writers, physicians many times convinced us about the needness of wine in our daily life, here is one of them,
```
“Wine makes daily living easier, less hurried, with fewer tensions and more tolerance.” 
                                                                                        --- Benjamin Franklin
```

And also we have seen that the red wine industry has a exponential growth recently as social drinking is on the rise. And so, industry players are using product quality certifications to promote their products. But, this is a time-consuming process and requires the assessment given by human experts, which makes this process very expensive and complex, we will see that also the data set is something different from other ones as a real dataset. And also, industriesset the price of a product depending upon its demand and appriciation of the customers, in this case it is very sesitive and totally depends on the choisce of the customer, so, price of red wine depends on a rather abstract concept of wine appreciation by wine tasters, opinion among whom may have a high degree of variability. Another vital factor in red wine certification and quality assessment is physicochemical tests, which are laboratory-based and consider factors like acidity, pH level, sugar, and other chemical properties. The red wine market would be of interest if the human quality of tasting can be related to wine’s chemical properties so that certification and quality assessment and assurance processes are more controlled. This project aims to determine which features are the best quality red wine indicators and generate insights into each of these factors to our model’s red wine quality.


# 
# About the Dataset:
Now, a brief overview of the Red Wine Quality Dataset.

Our Red Wine Quality Data Set, available on the [Kaggle UCI machine learning repository](https://www.kaggle.com/uciml/red-wine-quality-cortez-et-al-2009).The dataset contains a total of 12 variables, which were recorded for 1,599 observations. This data will allow us to create different regression models to determine how different independent variables help predict our dependent variable, quality. Knowing how each variable will impact the red wine quality will help producers, distributors, and businesses in the red wine industry better assess their production, distribution, and pricing strategy.

The main aim of the red wine quality dataset is to predict which of the physiochemical features make good wine. With 11 variables and 1 output variable (quality) given, The problems are clearly expalined in the kaggle repository. Let us examine the role of each of these features:
> **Fixed Acidity:** are non-volatile acids that do not evaporate readily
> 
> **Volatile Acidity:** are high acetic acid in wine which leads to an unpleasant vinegar taste
> 
> **Citric Acid:** acts as a preservative to increase acidity. When in small quantities, adds freshness and flavor to wines
> 
> **Residual Sugar:** is the amount of sugar remaining after fermentation stops. The key is to have a perfect balance between sweetness and sourness. It is important to note that wines > 45g/ltrs are sweet
> 
> **Chlorides:** the amount of salt in the wine
> 
> **Free Sulfur Dioxide:** it prevents microbial growth and the oxidation of wine
> 
> **Total Sulfur Dioxide:** is the amount of free + bound forms of SO2
> 
> **Density:** sweeter wines have a higher density
> 
> **pH:** describes the level of acidity on a scale of 0–14. Most wines are always between 3–4 on the pH scale
> 
> **Alcohol:** available in small quantities in wines makes the drinkers sociable
> 
> **Sulphates:** a wine additive that contributes to SO2 levels and acts as an antimicrobial and antioxidant
> 
> **Quality:** which is the output variable/predictor ranging from 0 to 10 , but in the dataset there are wine of qualities ranging from 3 to 8
Now we have a basic knowledge of various factors that influence the quality of good wine.


# Data Preparation
### Data Cleaning
Our first step will be to clean and prepare the data for analysis. We go through different steps of data cleaning. First, we checke the data types focusing on numerical and categorical to simplify the correlation’s computation and visualization. Second, We try to identify any missing values existing in our data set. Last, We researche each column/feature’s statistical summary to detect any problem like outliers and abnormal distributions.

### Data Exploration and Visualization: this helps in effectively interpreting each feature in the wine data

Train the algorithm: using Multivariable Regression and Random Forest Classification to identify patterns and relationship between the targets and features

Evaluate your model (Regression and Classification) using a few metrics:
a. Skew: a normal distribution close to zero is a perfect distribution
b. MSE (Mean Squared Error): is an absolute measure of fit. Note that an MSE of 0 indicates a perfect fit)
c. RMSE (Root Mean Squared Error): is a good measure of how accurate the model predicts the target
d. R-Squared: is a relative measure of fit
e. Confusion Matrix (Accuracy, Precision, Recall)
Also, the use of BIC (Bayesian Information Criterion) for model selection in measuring complexity; where the model with the lower BIC Value,is the preferred.
- **Note:Here, We only do exploratory data analysis and some nice visuals from which we can easily infer some inportant information.**


# Some Visualizations:
- [x] 01
![example_image](visualization_R/Rplot.png)
- [x] 02
![example_image](visualization_R/Rplot01.png)
- [x] 03
![example_image](visualization_R/Rplot02.png)
- [x] 04
![example_image](visualization_R/Rplot03.png)
- [x] 05
![example_image](visualization_R/Rplot04.png)
- [x] 06
![example_image](visualization_R/Rplot05.png)
- [x] 07
![example_image](visualization_R/Rplot06.png)
- [x] 08
![example_image](visualization_R/Rplot07.png)
- [x] 09
![example_image](visualization_R/Rplot08.png)
- [x] 10
![example_image](visualization_R/Rplot09.png)
- [x] 11
![example_image](visualization_R/Rplot10.png)
- [x] 12

![example_image](visualization_R/Rplot11.png)
- [x] 13
![example_image](visualization_R/Rplot12.png)
- [x] 14
![example_image](visualization_R/Rplot13.png)
- [x] 15
![example_image](visualization_R/Rplot14.png)
- [x] 16
![example_image](visualization_R/Rplot15.png)
- [x] 17
![example_image](visualization_R/Rplot16.png)
- [x] 18
![example_image](visualization_R/Rplot17.png)
- [x] 19
![example_image](visualization_R/Rplot18.png)
- [x] 20
![example_image](visualization_R/Rplot19.png)
- [x] 21
![example_image](visualization_R/Rplot20.png)
- [x] 22

![example_image](visualization_R/Rplot21.png)
- [x] 23
![example_image](visualization_R/Rplot22.png)
- [x] 24
![example_image](visualization_R/Rplot23.png)
- [x] 25
![example_image](visualization_R/Rplot24.png)
- [x] 26
![example_image](visualization_R/Rplot25.png)
- [x] 27
![example_image](visualization_R/Rplot26.png)
- [x] 28
![example_image](visualization_R/Rplot27.png)
- [x] 29
![example_image](visualization_R/Rplot28.png)
- [x] 30
![example_image](visualization_R/Rplot29.png)
- [x] 31
![example_image](visualization_R/Rplot30.png)
- [x] 32

![example_image](visualization_R/Rplot09.png)
- [x] 33
![example_image](visualization_R/Rplot08.png)
- [x] 34
![example_image](visualization_R/Rplot09.png)
- [x] 35
visualization_R/Rplot02.png























Here is the visualization part of various dependencies of quality of wine from [**RED WINE QUALITY dataset** (_P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis.
Modeling wine preferences by data mining from physicochemical properties. In Decision Support Systems, Elsevier, 47(4):547-553, 2009._)]( https://www.kaggle.com/uciml/red-wine-quality-cortez-et-al-2009) . And also I have done some analysis on the deciding factors of the quality of Red wine.It is a detaild explaination.

You can find two .R file. 1st run all the lines of both the files once. This time ignore all the warnings and errors.
Next run again the code , now try to understand the codes , you can easily understand and get all plots. Though some plots may take time to arrive please wait for soemtime if anyplot shows no error but just warning . I guess in the middle portion you may struggle to get some plots . I am providing all the plots here too. 

I shall add a report explaining all the things though , you are requested to do further work for a regression model that can predict the quality . And you can also take it as a classification problem to solve ( considering quality of 3,4 as low-quality;  5,6 as medium quality and 7,8 as high quality )
If you have any question to ask me please feel free to ask . and I will be happy to help you . Email ID:  mahendranandi.rkma@gmail.com
