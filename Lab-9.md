# Lab 9

## Analysis Of Variance (ANOVA)

Before we dive into a new test, let us take a second to look back at the tests we have already covered and remember what those tests allowed us to do, and what the data for those tests looked like:

**Z-Test** 

  - What does it do - The Z-test allows us to see if the scores from one population differ from another. 
  - What does our data look like - In order perform a Z-test, we need to have large enough sample to work with (N>30) and we need to know $\mu$ and $\sigma$.

**T-Test** 

  - What does it do - The T-test allows us to compare a sample to :
    - a) $\mu$ when it is given, and when $\sigma$ is not.
    - b) another sample with paired values.
    - c) another sample with uncorrelated values
  - What does our data look like - In order to perform a T-test, we need to have a sample that we are comparing to either, $\mu$, paired values, or a sample of (hopefully) equal length. 

**Why is ANOVA different?** 

Here is what t-test for independent samples might look like: 


    {r}
    control = rnorm(20,4.5,2)
    experimental = rnorm(20,6.8,1)
    t_test_ex <-data.frame(control, experimental)
    t_test_ex

You will notice that there are two columns, one for a condition of control and one for a condition of experimental. 

We we have yet to discuss what this experiment *actually* is trying to answer, but, we can tell from looking at the data that whatever experimental is—it’s mean is higher than control and may be a significant difference.



Here is what an ANOVA might look like:


```{r}
    Condition=c(rep(“control”,10),rep(“Treatment 1”, 10), rep(“Treatment 2”, 10)
    Scores = rnorm(30, 18, 10)
    anova_example <- data.frame(Conditions, Scores)
    anova_example
```
As you can see, we still have two columns, but the main difference is that what used to be a condition two separate samples has become one single sample, separated by the various conditions.

Herein lies the main difference between t-tests and the ANOVA, the amount of independent variables present.

JEFF[Herein lies the main difference between t-tests and ANOVAs: the amount of conditions (samples) that can be compared.]

T-tests operate using two independent variables, ANOVA’s operate using 3+ independent variables.

JEFF[t-tests can only compare two conditions, while ANOVAs can compare more than two conditions.]

There are several notes to make when dealing with data in the format of an ANOVA. 

It becomes essential that you understand the differences between an independent variable and a dependent variable. 

When you are dealing with 3 or more Independent variables, you need to convert them into `factors` if they are not already.

JEFF[When you are dealing with 3 or more conditions, you need to convert them into factors if they are not already.]

`factors` are the objects that are made of different conditions in a particular design.

JEFF[factors are a type of data that tell R which subjects are in which condition.]

You can check if a vector is a `factor` by running the `is.factor()` function. 

We we will go through some examples to see what it looks like when `R` recognizes a vector as a `factor` and when it does not. 

The following example shows a vector of conditions. However, R does not know that these are conditions until we tell it that they are factors. If we are unsure if R knows if a vector is a factor, we can test it using `is.factor` :

    example <- c("Control","Control","Placebo","Placebo","Drug","Drug")
    is.factor(example)

Now that we know that R does not consider this vector to be a factor, we can manually tell R to make it a factor.


    factor(example)

Now R, will recognize `example`  as a factor.


    


    aov.test.mod<-aov(anova_example$Scores ~ anova_example$Condition)
    summary(aov.test)

