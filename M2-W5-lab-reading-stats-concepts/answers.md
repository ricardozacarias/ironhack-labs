## Challenge Answers


### Challenge 1: What is the difference between expected value and mean?

- The expected value refers to a probability distribution, it is a weighted average of all the possible values in the distribution multiplied by the probability of that value occurring. 
- The mean refers to observed values. If we run an experiment on a variable with the same probability distribution as before, we should obtain values within the same range, **but the ones that have low probability should show up less often**. 
- As we run the experiment a million more times, the arithmetic mean should become more and more like the expected value.


### Challenge 2: What is the "problem" in science with p-values?
- The way I see it, the problems lie with making **binary decisions** based on the comparison between a p-value and a threshold. This is specially true in biomedical sciences where is large variability between samples. Just because a p-value is below threshold does not mean that the null hypothesis is false and vice-versa. To better describe an experiment it should be given more importance to the entire range of the data and those around the 'point estimate'.


### Challenge 3: Applying testing to a specific case: A/B testing.

- Taking the example given in the README about adding a new button "Click here to discover cool games!".
- I would test this feature by splitting traffic in the website to a page that has this button and a page that doesn't (scientific parenthesis: it is usually not OK to make a manipulation in one group and not do anything in the other. The best practice is, in the control group, to also make a manipulation but that is more neutral. Like in this example the control group could also have a button saying "click here to go back to the main page". It's a bad example, but at least this way we could test for the effect of just adding a button, regardless of where it sends you.

- The metric that would be interesting to see is number of clicks, and them amount of time spent on that new page, and maybe how many clicks you get in the 'cool games' that were linked in that page and compare between groups. The null hypothesis would be that the button has no effect and we could do hypothesis tests to confirm.
