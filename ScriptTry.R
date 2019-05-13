# Option + - is shortcut for <-
#Control + Option + M is shortcut to commit changes
#Option + Shift + K shows keyboard shortcuts
#Command + Shift + K knits document

# Spearman Rho
x <- rnorm(10,100,1)
rank(x)
cor.test(x,y,method = "spearman")

ranks <- rep(c(0:3,0:2,0:1),5)
y = sample(c(0,1),length(ranks),replace = T)
wilcox <- data.frame(ranks,y)

Mann-Whitney U Test
wilcox.test(ranks~y)

Wilcoxin Signed Rank 

'W is placeholder for U' 


Kruskall-Wallis
kd <- data.frame(x=rnorm(18,0,1),f=seq(rep(1:3)))
kruskal.test(kd$x~kd$f)

Friedman 
friedman.test()

cor.test(x,y,method = "spearman")






Input =("
 Instructor        Rater  Likert
 'Bob Belcher'        a      4
 'Bob Belcher'        b      5
 'Bob Belcher'        c      4
 'Bob Belcher'        d      6
 'Bob Belcher'        e      6
 'Bob Belcher'        f      6
 'Bob Belcher'        g     10
 'Bob Belcher'        h      6
 'Linda Belcher'      a      8
 'Linda Belcher'      b      6 
 'Linda Belcher'      c      8 
 'Linda Belcher'      d      8 
 'Linda Belcher'      e      8 
 'Linda Belcher'      f      7 
 'Linda Belcher'      g     10 
 'Linda Belcher'      h      9
 'Tina Belcher'       a      7
 'Tina Belcher'       b      5 
 'Tina Belcher'       c      7 
 'Tina Belcher'       d      8 
 'Tina Belcher'       e      8 
 'Tina Belcher'       f      9 
 'Tina Belcher'       g     10 
 'Tina Belcher'       h      9
 'Gene Belcher'       a      6
 'Gene Belcher'       b      4 
 'Gene Belcher'       c      5 
 'Gene Belcher'       d      5 
 'Gene Belcher'       e      6 
 'Gene Belcher'       f      6 
 'Gene Belcher'       g      5 
 'Gene Belcher'       h      5
 'Louise Belcher'     a      8
 'Louise Belcher'     b      7 
 'Louise Belcher'     c      8 
 'Louise Belcher'     d      8 
 'Louise Belcher'     e      9 
 'Louise Belcher'     f      9 
 'Louise Belcher'     g      8 
 'Louise Belcher'     h     10             
")

Data = read.table(textConnection(Input),header=TRUE)

Data
### Order levels of the factor; otherwise R will alphabetize them

Data$Instructor = factor(Data$Instructor,
                         levels=unique(Data$Instructor))

### Create a new variable which is the likert scores as an ordered factor

Data$Likert.f = factor(Data$Likert,
                       ordered=TRUE)

friedman.test(Likert ~ Instructor | Rater,
              data = Data)


#how to teach Friedman test


#Write down steps for friedman

# y = ordered factor
# A = factor
# B = no change

# Forcing values to be rankings
# Forcing values to be ordered







