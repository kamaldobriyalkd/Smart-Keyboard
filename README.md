Smart Keyboard
========================================================
author: by Kamal Dobriyal
date: 09-01-2022
autosize: true

Quick Overview
========================================================

<strong>Smart Keyboard</strong> is a web app working on NLP n_grams models.

It's interface is very simple, there a sidebar which have all instructions for any new user.

The user just have to enter text on given text field and as soon as space is entered a call goes to backend with the entered text as input.

Eventually user sees atmost three words in green color which are predicted by the app.

Data Usage
========================================================

We have use US_News, Us_Blogs, and US_Twitter comments for generating corpus. Dataset Link: [Data](https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip)<br>
Then we have preprocessed all the data and combined it to form a single corpus.<br>
Library and techniques used:
- <strong>tokenizers</strong>
- <strong>tm</strong>

We removed all the punctuations except apostrophe sign as it was very prevalent, also removed the hash-tags because they were without space.


Backend & Predictive Model
========================================================

In the backend, we have already loaded three n_grams i.e., <strong>biGrams</strong>, <strong>triGrams</strong> and <strong>quadGrams</strong>.

When input comes in the backend it is first pre-processed, like removal of numerics, punctuation, hash-tags.

Then based on the tokens generated from the input text, subsequent n_grams dataset is being looked up.

And top three n_gram with highest probability is spit out by the repective n_gram function and passed to the UI.

App Link
========================================================

Hope you like the app overview if you are really interested please check out the app.

As the app is fully based on <strong>shiny</strong> framework eventually it is being deployed on shinyapp.io servers for free.

App link: [Smart Keyboard](https://kamaldobriyal.shinyapps.io/Smart-Keyboard/)

