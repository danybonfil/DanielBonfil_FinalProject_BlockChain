# Voting Dapp Whitepaper - Smart Contract on Ethereum - FinalProject_BlockChain

## ***Daniel Bonfil - 1801214680***

## Introduction
The motivation for proposing this decentralized application (Dapp) raises from the new system of referendums that the Mexican Government implemented, which can be improved by including a hybrid of blockchain digital and physical voting. The past July of 2018, Mexico had general elections for president, 

We use machine learning algorithms to categorize tree species, based on their color index on satellite images taken in September, March and May. This project uses a dataset made available by **UC Irvine Machine Learning Repository**. We think the project is interesting and meaningful, because the output (forest type map) can be used to identify and/or quantify ecosystem services (e.g.: carbon storage, erosion protection) provided by the forest, which has significant effect on environment protection.

## Data Source
We derived our dataset from UC Irvine Machine Learning Repository.
Source: http://archive.ics.uci.edu/ml/datasets/Forest+type+mapping

## Data Summary Statistics
This dataset contains 523 samples and 27 features from a remote sensing study which mapped different forest types based on their spectral characteristics at visible-to-near infrared wavelengths, using ASTER satellite imagery of an area in Japan.
Here is an example of our dataset:

![](./data1.png)


**The attributes contain information on the following:**

* S：Sugi forest
* H: Hinoki forest
* D: Mixed deciduous forest
* O: Other non forest land

* b1 - b9: ASTER image bands containing spectral information in the green, red, and near infrared wavelengths for three dates (Sept. 26, 2010; March 19, 2011; May 08, 2011.)
* pred_minus_obs_S_b1 - pred_minus_obs_S_b9: Predicted spectral values (based on spatial interpolation) minus actual spectral values for the 's' class (b1-b9)
* pred_minus_obs_H_b1 - pred_minus_obs_H_b9: Predicted spectral values (based on spatial interpolation) minus actual spectral values for the 'h' class (b1-b9)		

**A graphical representation:**
![](./woods.png)

Refference:
Johnson, B., Tateishi, R., and Xie, Z., 2012, Using geographically weighted variables for image classification, remote sensing letters,Vol.3 No. 6

## Our project approach:
* Visualize the data with Seaborn
* Feature selection / dimension reduction
* LR, Perceptron, SVM Linear / RBF, KNN, Decision Tree, Random Forest  
* Neural network
* Performance comparison

**Please open our forrest.IPYNB file and find out how we did everything!**

*[MLF_FinalCode.ipynb](https://github.com/TianXiangxun/PHBS_MLF_2018/blob/master/MLF_FinalCode%20-Without%20NN.ipynb)*

*[MLF_FinalCode - Only Neural Network.ipynb](https://github.com/TianXiangxun/PHBS_MLF_2018/blob/master/MLF_FinalCode-only%20Neural%20network.ipynb)*

## Exploratory Data Analysis (EDA)
We used Seaborn to understand the distribution of the data and the relationship between features.
Since we are using more than 2 classes, we encoded the different tree types s, h, d, & o with 1, 2, 3, & 4.
![](./Image/1.1.png)

## Principal Component Analysis (PCA)
* We split the data and implemented PCA from sklearn plot the test dataset to see if it can separate the classes well. (Inner Works on Code)
* The resulting plot indicates that the first principal component alone accounts for about 40% of variance.

![](./Image/2.1.png)

* After executing PCA, we can see in the resulting plot, the data is more spread along the x-axis,the first principal component,than the PC2, which is consistent with the explained variance ratio plot that we created above.

![](./Image/2.2.png)

![](./Image/pca3.png)

## LDA
* We plot the linear discriminants Using LDA from sklearn. (Inner Works on Code)

![](./Image/LDA1.png)

![](./Image/LDA2.png)

* As we can see from the figure, the first three linear discriminants alone capture 100% of useful information in the dataset.
* Using the transformation matrix, we transform the training dataset. 
**Now the four forests classes are perfectly linearly separable.


## Implementing 6 Different Methods:

## * 1 LogisticRegression Model

![](./Image/model1.png)

**Missclasified Samples: 51 | Accuracy: 0.675159**

## * 2 Perceptron (40 iterations, 0.2 eta)

![](./Image/model2.png)

**Misclassified samples: 50 | Accuracy: 0.681529**

*We introduce different interations in each model to show a more comprehensive undestanding of the model and its sensitivity to different arguments:*

2.1 [Perceptron](https://github.com/TianXiangxun/PHBS_MLF_2018/tree/master/1.%20Perceptron) with 1, 10 and 28, 30 and 80 iterations.
Perceptron with 28 iterations and eta of 0.001, 0.5 and 0.9.

## * 3 SVM_linear

![](./Image/model3.png)
  
**Misclassified samples: 32 | Accuracy: 0.796178**

*We introduce different interations in each model to show a more comprehensive undestanding of the model and its sensitivity to different arguments:*

3.1 [SVM](https://github.com/TianXiangxun/PHBS_MLF_2018/tree/master/1.%20SVM) with C of 0.001, 0.1 and 0.8.
  
## * 3.2 SVM_RBF

![](./Image/model4.png)

**Misclassified samples: 29 | Accuracy: 0.815287**

*We introduce different interations in each model to show a more comprehensive undestanding of the model and its sensitivity to different arguments:*

3.2.1 [SVMrf](https://github.com/TianXiangxun/PHBS_MLF_2018/tree/master/1.%20PSVMRF) with Gamma values of 0.001, 0.1, 0.5 and 0.9 each one tested with C values of 1 and 10, respectively.

## * 4 KNN

![](./Image/model5.png)

**Misclassified samples: 28 | Accuracy: 0.821656**

*We introduce different interations in each model to show a more comprehensive undestanding of the model and its sensitivity to different arguments:*

4.1 [KNN](https://github.com/TianXiangxun/PHBS_MLF_2018/tree/master/1.%20KNN) with 1, 3 and 8 nearest neighbors.

## * 5 Decision Tree

![](./Image/model6.png)

**Misclassified samples: 34 | Accuracy: 0.783439**

*We introduce different interations in each model to show a more comprehensive undestanding of the model and its sensitivity to different arguments:*

5.1 [Decision Tree](https://github.com/TianXiangxun/PHBS_MLF_2018/tree/master/1.%20Decision%20Tree) with 1, 3 and 7 estimators.

## * 6 Random Forest

![](./Image/model7.png)

**Misclassified samples: 33 | Accuracy: 0.789809**

* We introduce different interations in each model to show a more comprehensive undestanding of the model and its sensitivity to different arguments:*

6.1 [Random Forests](https://github.com/TianXiangxun/PHBS_MLF_2018/tree/master/1.%20Random%20Forests) with 1, 30 and 70 max depth.

## Neural Network

* The last thing we did is to train a Neural Network on the data.
* The accuracy on the training set was 91% but we didn't do cross validation yet.
* How ever, it is likely that cross validation would render us lower accuracy scores because it would reduce our training sample drastically while sample size is very important is not great for Neural Networks.

[MLF_FinalCode - Only Neural Network.ipynb](https://github.com/TianXiangxun/PHBS_MLF_2018/blob/master/MLF_FinalCode-only%20Neural%20network.ipynb)

### Before implementing Neural Network, our best accuracy was achieved KNN (Accuracy= 0.821656, K=5)
### We compare our accurracy rate with the one presented in the paper cited, we can appreciate that KNN yields a higher accuracy rate than SVM used in the research. However, it must be noted that the paper introduces a special IDE interpolation technique used by experts in ecology and forestry; when compared to this techinque the accurracy is lower. For further research it would be interesting to include IDE interpolation technique to KNN and other different methods to compare accurracy among. 

## Reference
Original Paper: Johnson, B., Tateishi, R., and Xie, Z., 2012, Using geographically weighted variables for image classification, remote sensing letters,Vol.3 No. 6
