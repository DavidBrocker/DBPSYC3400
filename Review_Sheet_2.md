# Review Sheet 2
`barplot` - This is the overall function for creating a bar graph. It has several functions that go along with it.

  
  `col` - This is the same idea from the color argument used in a scatter plot, however, with bar plots you need to add a concatenation if you are looking to plot more than one bar (which you should!).
      
    `col=c(``"``white``"``,``"``red``"``,``"``blue``"``)`
        `names.arg` - This is similar to `xlab`,     however, we are usually going to be referring to each bar by a different name so you will need to add a concatenation.
  `names.arg=c(``"``Experimental``"``,``"``Control``"``)`

**Data Generation**

`set.seed()` - This function specifies a ‘seed’ of your choice. By choosing a ‘seed’ you are ensuring the ability of the data you produce to be replicable either for the use of a problem set, or for troubleshooting. 

`sample`  - This function allows you to create a sample from an existing vector. It has two arguments. 


  `x` - The vector that you will be sampling from. It is important that whatever you decide to sample from x *cannot* be larger than the length of x.


  `n` - This specifies how many items you  want to sample from `x`. 


    *Sampling Example* 
    `sample(x, 10)`

`rnorm` - This function returns whatever size you specify as a vector from the normal distribution.


  `N` - This is the size of the vector that you would like.


  `mean` - This is what you would like the mean of the data returned to be.


  `sd` - This is what you would like the standard deviation of the data returned to be. 


    *Example of rnorm* 
    `rnorm(100, 120, 10)`

`library()` - This function loads a package outside of the ones native to R. So far, the only package we will be using is `BSDA`. 

**BSDA** 

`z.test()` -  This is the function you will use to perform a z test. It contains several arguments.


  `x` - This will be your vector that continues the data you will be comparing to $$\mu$$ and $$\sigma$$.


  `sigma.x` - This will be the population standard deviation, $$\sigma$$, which will *usually* be given to you in a question.


  `mu` - This will be the population mean, $$\mu$$, which will *usually* be given to you in a question. 


  `alternative` - This argument specifies the directionality of the hypothesis you wish to test. 


    `two.sided` - This argument specifies that you wish to run a 2-tailed test. 


    `lesser` - This argument specified that you wish to run a 1-tailed test indicating that your sample is *less* than the population mean, $$\mu$$.


    `greater`  - This argument specified that you wish to run a 1-tailed test indicating that your sample is *greater*  than the population mean, $$\mu$$.


  Here is what a full z.test function could look like:


  `z.test(x, mu = 12, sigma.x = 3.12, alternative =` `"``two.sided``"``)`

`SIGN.test()` -  This is the function you will use to perform a sign test. It contains several arguments.


  `x` - This will be your vector that continues the data that is the *difference* between the first group and second group. 


  `md` - This will rarely be given, but implied. The sign test will test against the $$H_0$$, which states that no difference exists, so 0 should be the default value. 


  `alternative` - This argument specifies the directionality of the hypothesis you wish to test. 


    `two.sided` - This argument specifies that you wish to run a 2-tailed test. 


    `lesser` - This argument specified that you wish to run a 1-tailed test indicating that your sample is *less* than the population mean, $$\mu$$.


    `greater`  - This argument specified that you wish to run a 1-tailed test indicating that your sample is *greater*  than the population mean, $$\mu$$.


  Here is what a full sign test function could look like:


  `SIGN.test(x, md = 0, alternative = "two.sided")`

**T-Test: One-Sample, Paired, Independent**

`t.test` - This function contains several arguments, the results, as well as the type of test that is run will be determined on which you specify. 


  `x` - This is a vector that you be comparing against the population mean, $$\mu$$.


  `y1, y2` - These arguments specify two distinct vectors of the same length to be compared. 


  `mu` - This will be the population mean, $$\mu$$, which will *usually* be given to you in a question. 


  `alternative` - This argument specifies the directionality of the hypothesis you wish to test. 
  
    `two.sided` - This argument specifies that you wish to run a 2-tailed test. 
  
    `lesser` - This argument specified that you wish to run a 1-tailed test indicating that your sample is *less* than the population mean, $$\mu$$.
  
    `greater`  - This argument specified that you wish to run a 1-tailed test indicating that your sample is *greater*  than the population mean, $$\mu$$.


  
  `var.equal = TRUE` - This argument specifies that the variances are assumed to be equal. 


  `paired = TRUE` - If specified, this will result in R assuming the sample(s) are to be paired.

**Determining which Test will be run:**

*Single Sample T-Test*

`t.test(x, mu = 23, alternative =` `"``lesser``"``)`

*Paired Sample T-Test*

`t.test(y1, y2, paired = TRUE, var.equal= TRUE, alternative = "greater")`

*Independent T-Test*

`t.test(y1, y2, var.equal= TRUE, alternative = "two.sided")`






