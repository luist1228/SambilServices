import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import io
from sklearn.neural_network import MLPRegressor
from sklearn.model_selection import train_test_split
from sklearn.neural_network import MLPClassifier
from sklearn import datasets
from sklearn import tree
import time

def runLinearRegression(day):
    df = pd.read_csv('csvFiles/sales.csv')

    x = df['Date']
    y = df['Sales']

    X = x[:,np.newaxis]
    X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.2)

    model = MLPRegressor(solver='lbfgs',alpha=1e-5,hidden_layer_sizes=(3,3),random_state=1)
    counter = 0
    print("AI is learning...")
    for i in range(1000):  
        model.fit(X_train,y_train)
        if(model.score(X_train,y_train) > 0.80):
            break
        counter += 1
    

    x_new = np.array([100]).reshape((-1,1))
    y_new = model.predict(x_new)

    print("Prediction for day " + str(day) + ": ", y_new)
    print("R^2 = " + str(model.score(X_train,y_train)))

    x_new= np.array([0,0,day]).reshape((-1,1))
    X2 = np.concatenate((X, x_new))
    plt.scatter(x, y)
    plt.plot(X2, model.predict(X2), color='red', linewidth=3)
    plt.title('Neural Network Regression')
    plt.xlabel('Days')
    plt.ylabel('Sales')
    plt.show()

def runSalesTree(storeID,salesNumber):
    df = pd.read_csv('csvFiles/sales.csv')
    x = []
    for index, row in df.iterrows():
        x.append([row['StoreID'], (row['Sales'])])     

    x = np.array(x)
    y = df['Amount']
    
    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=.5)
    saman = tree.DecisionTreeClassifier()
    saman = saman.fit(x_train, y_train)
    print("And that store, with " + str(salesNumber) + " sales could get $" + str(saman.predict([[storeID, salesNumber]])[0]))

def runSalesNeuralNetwork(storeID,day):
    df = pd.read_csv('csvFiles/sales.csv')
    x = []
    for index, row in df.iterrows():
        x.append([row['StoreID'],row['Sales']])

    y = df['Date']
    x = np.array(x)

    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=.5)
    patricio = MLPClassifier(max_iter=10000000, hidden_layer_sizes=(20,55)) 
    patricio.fit(x_train, y_train)

    inputN = [storeID, day]
    inputArray = np.array(inputN).reshape(1, -1)

    #Neural Network prediction
    sales = patricio.predict(inputArray)[0]

    print("At day " + str(day) + " it's expected for the store ID(" + str(storeID) + ") to have " + str(sales) + " sales.")

    print("Neural Network precisson: " + str(patricio.score(x_train, y_train)))

    runSalesTree(storeID, sales)
