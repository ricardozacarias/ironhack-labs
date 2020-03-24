<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Lab | Pandas Deep Dive

## Introduction

By this point in the program, you should have learned how to perform a variety of operations using the Pandas library.

In this lab, again you will be working on [main.ipynb](your-code/main.ipynb). Read the instructions and questions in the Jupyter notebook and provide your answers. Make sure to test your answers in Python.

## Goals

In this lab, you will examine a data file named `apple_store.csv` downloadable from [this link](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/data-static/data/apple_store.csv). 

You can also find this data in Ironhack's database:
* db: `appleStore`
* table: `data`

Feel free to choose where you get your data from. If you get your data from the database, ignore the steps in the main.ipynb file regarding importing the csv file. 

This data contains information of over 7,000 Apple Store apps such as ID, name, size in bytes, price, number of ratings, user rating, prime genre, and so on. You will use Pandas to import the data source and examine the data in order to answer several questions described next.

### Challenge Questions

- How many apps are there in the data source?

- What is the average rating of all apps?

- How many apps have an average rating no less than 4?

- How many genres are there in total for all the apps?

- What are the top 3 genres that have the most number of apps?

- Which genre is most likely to contain free apps?

- If a developer tries to make money by developing and selling Apple Store apps, in which genre should s/he develop the apps? Please assume all apps cost the same amount of time and expense to develop.

## Deliverables

- `main.ipynb` with your responses to each of the questions above.

## Submission

Upon completion, add your version of `main.ipynb` to git. Then commit git and push your branch to the remote.

## Resources

[Pandas Documentation](https://pandas.pydata.org/pandas-docs/stable/api.html)

[10 Minutes to Pandas](https://pandas.pydata.org/pandas-docs/stable/10min.html)

[Google Search](https://www.google.com/search?q=how+to+use+pandas+python)

## Additional Challenges for the Nerds

### [Pandas Tutorial: Data analysis with Python | Part 1](https://www.dataquest.io/blog/pandas-python-tutorial/)

If you have completed the `apple_store` challenge without much difficulty, you will find this tutorial pretty easy. However, it's still a great tutorial to read because it explains a lot of the thinking process behind codes. You can skim through this tutorial quickly to check if there's anything you still don't know.

### [Pandas Tutorial: Data analysis with Python | Part 2](https://www.dataquest.io/blog/pandas-tutorial-python-2/)

This is an advanced tutorial about Pandas that involves [character encoding](http://www.cogsci.nl/blog/a-simple-explanation-of-character-encoding-in-python.html), [Pandas DataFrame `apply` method](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.apply.html), [Python `lambda` expression](https://docs.python.org/3/tutorial/controlflow.html#lambda-expressions), Python functional programming (you'll learn later this week), data cleaning (you'll learn later this week), and plotting with `matplotlib` (you'll learn in Module 2). There is a lot of new information but if you manage to complete this tutorial you'll be far ahead of your classmates.

The most challenging part of this course is Module 3. In Module 1 and 2 most students should be able to complete with moderate efforts. What will make you truly stand out is how deep you can dive in Module 3, which depends on your level of accomplishment in Module 1 and 2. Therefore, if you have the power to accomplish more (in terms of both the depth and breadth) in the first two modules we will certainly encourage you to.
