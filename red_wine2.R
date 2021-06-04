


# installing packages
#####
#install.packages("ggpubr")
#install.packages("easyGgplot2")
#install.packages("dplyr")
#install.packages("ggplot2")
#install.packages("PerformanceAnalytics")
#install.packages("corrplot")
#install.packages("psych")
#install.packages("plyr")

#exicuting libearies
#####

library(easyGgplot2)
library(dplyr)
library(ggplot2)
library(plyr)
library(ggpubr)
theme_set(theme_pubr())

#####

# data
#####

wine <- read.csv("winequality.csv",header = T)

T1
T2
T3
T4

# DETAILS & CODES HERE
#####
t1 <- paste( "


    ********* TUSKS TO DO ********
#            ------------
## SMALL DESCRIPTION OF DATA \n## OVERVIEW OF THE DATASET AND THE  COLUMNS  MANUALLY\n",
             "##                               SAME  .....   GRAPHICALLY\n",
             "## FINDING APROXIMATE RELATIONS AMOMG THE COLUMN FROM THE PLOTS\n",
             "## GO TO MORE DEEP WITH PARTICULAR COLUMN GRAPHICALLY\n",
             "## DRAWING INSIGHTS \n## PLOTTING THE MOST VALUABLE INSIGHTS FINALLY \n## INSIGHTS IN BUSINESS TERM" )

t1p <- ggparagraph(text=t1, face="italic", color = "blue"); t1p
T1<- ggarrange(z,t1p,ncol=2,nrow=3,heights=c(1.5,2.5,0.3))


t2<- paste("\n\nSMALL DESCRIPTION ABOUT THE DATA::-------------------\n",
           "Here in the dataset  the various leading and sensitive ",
           "components of wine is\ngiven from psychochemical test ",
           ".SO here my main aim is to find if there is any ",
           "such relation among the components which is maintaining  ",
           " the wine quality   \n\n",
           "we will here 1st visualize the data and understand it ",
           "primarily , at a glance then will go to further discussion ",
           "in details to analise the relations \n\n",
           "The datsaset is collected from - [ LINK HERE ]\n",sep = "")
t2p <- ggparagraph(text=t2, face="italic",size = 11, color = "blue")
T2 <- ggarrange(z,t2p,ncol=3,nrow=3,heights=c(1.5,2.5,0.3))

t3 <- paste("
 The dataframe containing 12 columns and 1600 rows ;\n",
            "The first 11 rows [ INDEPENDENT ] are numerical and contain ",
            " the results or measures of different tests on a particular",
            "sample of wine with different composition but the last column ",
            "[DEPENDENT]contains categorical data represented by numeric digit\n",
            "defining the relative quality of the wine and this is of more",
            "importance. Because the price of wine depends on this abstruct",
            "appriciation by wine tasters.This is abstruct because it is",
            "opinion of people which may varry in a large scale. BUT now ",
            "here we will try to relate the human quality of testing with ",
            "the chemical properties of the wine . so that we can build a ",
            "sceintific and statistical model to predic along with the insights")
t3p <- ggparagraph(text=t3, face="italic",size = 11, color = "blue")
T3 <- ggarrange(z,t3p,ncol=3,nrow=3,heights=c(1.5,2.5,0.3))



t4<- paste("                     table(wine$quality)\n",
           "#                    ----------------------------------------------\n",
           "#    QUALITY INDEX   |   3   |   4   |  5   |   6   |   7   |  8   |\n",
           "#           ..       |---------------------------------------------|\n",
           "#    NO OF SAMPLE    |  10   |  53   | 681  |  638  |  199  |  18  |\n",
           "#                    ----------------------------------------------")
t4p <- ggparagraph(text=t4, face="italic",size = 11, color = "blue")

T4 <- ggarrange(z,t4p,ncol=1,nrow=3,heights=c(1.5,2.5,0.3))                                             



###


##                   DATA PREPARATION                                            
-----------------
  
  #install.packages("ggpubr")
  #install.packages("easyGgplot2")
  #install.packages("dplyr")
  #install.packages("ggplot2")
  

#par16=par(mfrow=c(1,6))
#par13=par(mfrow=c(1,3))
#par12=par(mfrow=c(1,2))
#par11=par(mfrow=c(1,1))
#par23=par(mfrow=c(2,3))

#wine <- read.csv("winequality.csv",header = T); wine


#                DATA CLEaNING 
------------
#sum(complete.cases(wine))
#sum(is.na(wine))


##3  """""""""""""""""""""" DATA OVERVIEW [numerically ]"""""""""""""""""""""""""""
----------------------------
  #dim(wine)  #1599*12
  
  #head(wine)
  #      fixed.acidity   volatile.acidity   citric.acid  residual.sugar
  #            7.4              0.70          0.00             1.9
  #            7.8              0.88          0.00             2.6
  #            7.8              0.76          0.04             2.3
  #           11.2              0.28          0.56             1.9
  #            7.4              0.70          0.00             1.9
  #            7.4              0.66          0.00             1.8
  
#   chlorides  free.sulfur.dioxide  total.sulfur.dioxide    density
#      0.076           11                   34              0.9978
#      0.098           25                   67              0.9968
#      0.092           15                   54              0.9970
#      0.075           17                   60              0.9980
#      0.076           11                   34              0.9978
#      0.075           13                   40              0.9978

#    pH     sulphates   alcohol    quality
#   3.51      0.56        9.4         5
#   3.20      0.68        9.8         5
#   3.26      0.65        9.8         5
#   3.16      0.58        9.8         6
#   3.51      0.56        9.4         5
#   3.51      0.56        9.4         5

str(wine)
#$ fixed.acidity       : num  7.4 7.8 7.8 ...
#$ volatile.acidity    : num  0.7 0.88 0.76 ...
#$ citric.acid         : num  0 0 0.04 0.56...
#$ residual.sugar      : num  1.9 2.6 2.3 ...
#$ chlorides           : num  0.076 0.098 0.092 ...
#$ free.sulfur.dioxide : num  11 25 15 17 11...
#$ total.sulfur.dioxide: num  34 67 54 60 34 ...
#$ density             : num  0.998 0.997 0.9...
#$ pH                  : num  3.51 3.2 3.26 ...
#$ sulphates           : num  0.56 0.68 0.65  ...
#$ alcohol             : num  9.4 9.8 9.8  ...
#$ quality             : int  5 5 5 6 5 5 ...



#summary(wine)


#   fixed.acidity     volatile.acidity                 citric.acid    residual.sugar  
---------          ----------                    -----------      -----------
  #   Min.   : 4.60     Min.   :0.1200                  Min.   :0.000   Min.   : 0.900  
  #   1st Qu.: 7.10     1st Qu.:0.3900                  1st Qu.:0.090   1st Qu.: 1.900  
  #   Median : 7.90     Median :0.5200                  Median :0.260   Median : 2.200  
  #   Mean   : 8.32     Mean   :0.5278                  Mean   :0.271   Mean   : 2.539  
  #   3rd Qu.: 9.20     3rd Qu.:0.6400                  3rd Qu.:0.420   3rd Qu.: 2.600  
  #   Max.   :15.90     Max.   :1.5800                  Max.   :1.000   Max.   :15.500  
  
  
  
  #   chlorides         free.sulfur.dioxide          total.sulfur.dioxide
  ----------            ----------                      ---------
  #   Min.   :0.01200      Min.   : 1.00                   Min.   :  6.00      
  #   1st Qu.:0.07000      1st Qu.: 7.00                   1st Qu.: 22.00      
  #   Median :0.07900      Median :14.00                   Median : 38.00      
  #   Mean   :0.08747      Mean   :15.87                   Mean   : 46.47      
  #   3rd Qu.:0.09000      3rd Qu.:21.00                   3rd Qu.: 62.00      
  #   Max.   :0.61100      Max.   :72.00                   Max.   :289.00      
  
  
  #     density               pH                         sulphates         alcohol     
  -----------         ---------                     -----------    ------------
  #   Min.   :0.9901     Min.   :2.740                 Min.   :0.3300   Min.   : 8.40  
  #   1st Qu.:0.9956     1st Qu.:3.210                 1st Qu.:0.5500   1st Qu.: 9.50  
  #   Median :0.9968     Median :3.310                 Median :0.6200   Median :10.20  
  #   Mean   :0.9967     Mean   :3.311                 Mean   :0.6581   Mean   :10.42  
  #   3rd Qu.:0.9978     3rd Qu.:3.400                 3rd Qu.:0.7300   3rd Qu.:11.10  
  #   Max.   :1.0037     Max.   :4.010                 Max.   :2.0000   Max.   :14.90  
  
  #      quality     
  ---------
  #   Min.   :3.000  
  #   1st Qu.:5.000  
  #   Median :6.000  
  #   Mean   :5.636  
  #   3rd Qu.:6.000  
  #   Max.   :8.000  
  
  


#####


#####


#BARPLOT OF QUALITY
##### 
fy
ggplot(wine,aes(quality))+geom_bar(fill="blue")+theme_pubclean()+
  ggtitle("study of independent column " , "barplot of QUALITY count")



#####

###DENSITY PLOT with boxplot OF OTHER COLUMNS     *************************************
#####

ggarrange(p1,p2,p3,p1.1,p21,p31,labels=c(1,2,3),ncol=3,nrow=2,font.label=list(color='blue'),heights=c(2,1))
ggarrange(p4,p5,p6,p41,p51,p61,labels=c(4,5,6),ncol=3,nrow=2,font.label=list(color='blue'),heights=c(2,1))
ggarrange(p7,p8,p9,p71,p81,p91,labels=c(7,8,9),ncol=3,nrow=2,heights=c(2,1),font.label=list(color='blue'))
ggarrange(p10,p11,p101,p111,font.label=list(color='blue'),labels=c(10,11),ncol=2,nrow=2,heights=c(2,1))


# here are the codes
#####
#  DENSITY PLOTS [ 11 COLUMNS WITH BOXPLOT]

p1<- ggplot(wine,aes(x=fixed.acidity))+
  geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(fixed.acidity)),
                                                         color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Fixed Acidity","x intercept of the blue line is the mean=8.32")+ xlab("Fixed Acidity(in g/dm^3)")  

p2<- ggplot(wine,aes(x=volatile.acidity))+
  geom_density(color="darkblue",fill="yellow") + geom_vline(aes(xintercept=mean(volatile.acidity)),
                                                         color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Volatile Acidity","x intercept of the blue line is the mean")+ xlab("Volatile Acidity(in g/dm^3)")  

#p2<- ggplot(wine,aes(x=volatile.acidity))+
  geom_histogram(color="darkblue",fill="red") + geom_vline(aes(xintercept=mean(volatile.acidity)),
                                                         color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Volatile Acidity","x intercept of the blue line is the mean")+ xlab("Volatile Acidity(in g/dm^3)")  

p3<- ggplot(wine,aes(x=citric.acid))+
  geom_density(color="darkblue",fill="red") + geom_vline(aes(xintercept=mean(citric.acid)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Citric Acid","x intercept of the blue line is the mean")+ xlab("Citric Acid(in g/dm^3)")  


p4<- ggplot(wine,aes(x=residual.sugar))+
  geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(residual.sugar)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Residual Sugar","x intercept of the blue line is the mean")+ xlab("Residual Sugar(in g/lit)")  

p5<- ggplot(wine,aes(x=chlorides))+
  geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(chlorides)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Chlorides","x intercept of the blue line is the mean")+ xlab("Chlorides")  

#p5<- ggplot(wine,aes(x=chlorides))+
  geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(chlorides)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Chlorides","x intercept of the blue line is the mean")+ xlab("Chlorides")  


#ggarrange(p1,p2,p3,p4,p5,ncol=3,nrow=2,heights=c(1,1)) Density of the wine sample(in g/cm^3)

 

p6<- ggplot(wine,aes(x=free.sulfur.dioxide))+
  geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(free.sulfur.dioxide)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Free Sulfur Dioxide","x intercept of the blue line is the mean")+ xlab("Free SO2(in mg/dm^3)")  
p7<- ggplot(wine,aes(x=total.sulfur.dioxide))+
  geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(total.sulfur.dioxide)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Total Sulfur Dioxide","x intercept of the blue line is the mean")+ xlab("Total SO2(in mg/dm^3)")  

p8<- ggplot(wine,aes(x=density))+
  geom_density(color="darkblue",fill="yellow") + geom_vline(aes(xintercept=mean(density)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Density of sample","x intercept of the blue line is the mean")+
  xlab("Density of the wine sample(in g/cm^3)")  

p9<- ggplot(wine,aes(x=pH))+
  geom_density(color="darkblue",fill="yellow") + geom_vline(aes(xintercept=mean(pH)),
                                                         color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of pH","x intercept of the blue line is the mean")+ xlab("pH")  

p10<- ggplot(wine,aes(x=sulphates))+
  geom_density(color="darkblue",fill="red") + geom_vline(aes(xintercept=mean(sulphates)),
                                                           color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Sulphates","x intercept of the blue line is the mean")+ xlab("Sulphates")  

p11<- ggplot(wine,aes(x=alcohol))+
  geom_density(color="darkblue",fill="red") + geom_vline(aes(xintercept=mean(alcohol)),
                                                         color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Alcohol","x intercept of the blue line is the mean")+ xlab("Alcohol(in % )")  

#p11<- ggplot(wine,aes(x=alcohol))+
  geom_histogram(color="darkblue",fill="red") + geom_vline(aes(xintercept=mean(alcohol)),
                                                         color="blue", linetype='dashed',size=1)+
  ggtitle("Density Plot of Alcohol","x intercept of the blue line is the mean")+ xlab("Alcohol")  


#ggarrange(p6,p7,p8,p9,p10,p11,ncol=3,nrow=2,heights=c(1,1))



#[1] "fixed.acidity"        "volatile.acidity"     "citric.acid"         
#[4] "residual.sugar"       "chlorides"            "free.sulfur.dioxide" 
#[7] "total.sulfur.dioxide" "density"              "pH"                  
#[10] "sulphates"            "alcohol"              "quality"

p1.1 <- ggboxplot(wine$fixed.acidity,horizontal = T,col = "blue", notch = T,
                  fill = "pink", orientation="horizontal", xlab="Fixed Acidity\n  ",ylab = "Boxplot1")
p21 <- ggboxplot(wine$volatile.acidity,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab="Volatile Acidity\n ",ylab = "Boxplot2")
p31 <- ggboxplot(wine$citric.acid,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "Citric Acid\n",ylab = "Boxplot3")
p41 <- ggboxplot(wine$residual.sugar,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "Residual Sugar\n",ylab = "Boxplot4")
p51 <- ggboxplot(wine$chlorides,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "chlorides\n",ylab = "Boxplot5")
p61 <- ggboxplot(wine$free.sulfur.dioxide,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "Free Sulfur Dioxide\n",ylab = "Boxplot6")
p71 <- ggboxplot(wine$total.sulfur.dioxide,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "Total Sulfur Dioxide\n ",ylab = "Boxplot7")
p81 <- ggboxplot(wine$density,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "Density of sample\n ",ylab = "Boxplot8")
p91 <- ggboxplot(wine$pH,horizontal = T,col = "blue", notch = T,
                 fill = "pink", orientation="horizontal", xlab = "pH\n",ylab = "Boxplot9")
p101 <- ggboxplot(wine$sulphates,horizontal = T,col = "blue", notch = T,
                  fill = "pink", orientation="horizontal", xlab = "Sulphates\n",ylab = "Boxplot10")
p111 <- ggboxplot(wine$alcohol,horizontal = T,col = "blue", notch = T,
                  fill = "pink", orientation="horizontal", xlab = "Alcohol\n",ylab = "Boxplot11")




#####





### BOXPLOT OF QUALITIES WITH EACH COLUMN    *********************************************
mahiM <-  ggarrange(b,c,d,e,f,g,labels=c(1,2,3),ncol=3,nrow=2) ; mahiM
mahiiM <- ggarrange(h,i,j,k,labels=c(7,8,9,10),ncol=2,nrow=2) ; mahiiM



mahi <-  ggarrange(c,j,k,labels=c(1,2,3),ncol=3,nrow=1) ; mahi
mahi1 <-  ggarrange(b,h,i,labels=c(4,5,6),ncol=3,nrow=1) ; mahi1
mahii <- ggarrange(d,e,f,g,labels=c(7,8,9,10),ncol=2,nrow=2) ; mahii



# here is the description and codes
#####
Qualities <- factor(wine$quality)
a <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=fixed.acidity, fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study Of Fixed Acidity in Wine" ,
                                  "Quality Wise Boxplot of Fixed Acidity ")+
  xlab("Quality")+ ylab("Fixed Acidity")+ labs(fill="Quality")

b <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=volatile.acidity, fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study OfVolitile Acidity  in Wine" ,
                                  "Quality Wise Boxplot of Volitile Acidity ")+
  xlab("Quality")+ ylab("Volitile Acidity")+ labs(fill="Quality")

c <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=citric.acid, fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study Of Citric Acid in Wine" ,
                                  "Quality Wise Boxplot of Citric Acid ")+
  xlab("Quality")+ ylab("Citric Acid")+ labs(fill="Quality")

d <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=residual.sugar, fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study Of Residual Sugar in Wine" ,
                                  "Quality Wise Boxplot of Residual Sugar ")+
  xlab("Quality")+ ylab("Residual Sugar")+ labs(fill="Quality")

e <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=chlorides, fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study Of  Chlorides in Wine" ,
                                  "Quality Wise Boxplot of Chlorides ")+
  xlab("Quality")+ ylab("Chlorides")+ labs(fill="Quality")

f <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=free.sulfur.dioxide , fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study Of Free SO2 in Wine" ,
                                  "Quality Wise Boxplot of Free SO2 ")+
  xlab("Quality")+ ylab("Free SO2")+ labs(fill="Quality")

#install.packages("ggpubr")
#library(ggpubr)

mean_tso2 <- ddply(wine,"quality",summarise,grp.mean=mean(total.sulfur.dioxide)); mean_tso2
g <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y= total.sulfur.dioxide, fill=Qualities))+
  geom_boxplot(notch = F)+ggtitle("Study Of total sulfur dioxide in Wine" ,
                                  "Quality Wise Boxplot of total sulfur dioxide ")+ labs(fill="Quality")
#+
  xlab("Quality")+ ylab("total sulfur dioxide")+
  geom_hline(data=mean_tso2, aes(yintercept=grp.mean,
                                 color=levels(as.factor(quality))),linetype="dashed")

h <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y= density, fill=factor(quality)))+
  geom_boxplot(notch = F)+ggtitle("Study Of  Density in Wine" ,
                                  "Quality Wise Boxplot of Density ")+
  xlab("Quality")+ ylab("Density")+ labs(fill="Quality")

i <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=pH , fill=factor(quality)))+
  geom_boxplot(notch = F)+ggtitle("Study Of  pH in Wine" ,
                                  "Quality Wise Boxplot of pH ")+
  xlab("Quality")+ ylab("pH ")+ labs(fill="Quality")

j <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=sulphates , fill=factor(quality)))+
  geom_boxplot(notch = F)+ggtitle("Study Of  sulphates in Wine" ,
                                  "Quality Wise Boxplot of sulphates ")+
  xlab("Quality")+ ylab("sulphates")+ labs(fill="Quality")

k <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
  ggplot(aes(x=quality,y=alcohol , fill=factor(quality)))+
  geom_boxplot(notch = F)+ggtitle("Study Of alcohol in Wine" ,
                                  "Quality Wise Boxplot of alcohol ")+
  xlab("Quality")+ ylab("alcohol") + labs(fill="Quality")



#####



### quality wise density plot        ***********************************************
#####
##ggarrange(d1,a,stable.p1,labels=c("","","CHART \nREGARDING \nFIXED ACIDITY "),ncol=3,nrow=1,heights=c(1,1))
##ggarrange(d3,c,stable.p3,labels=c("","","CHART \nREGARDING \nCITRIC ACID "),ncol=3,nrow=1,heights=c(1,1))
ggarrange(d10,j,stable.p10,labels=c("","","CHART \nREGARDING \nSULPHATES "),ncol=3,nrow=1,heights=c(1,1))
ggarrange(d11,k,stable.p11,labels=c("","","CHART \nREGARDING \nALCOHOL "),ncol=3,nrow=1,heights=c(1,1))

##ggarrange(d4,d,stable.p4,labels=c("","","CHART \nREGARDING \nRESIDUAL SUGAR "),ncol=3,nrow=1,heights=c(1,1))
#ggarrange(d5,e,stable.p5,labels=c("","","CHART \nREGARDING \nCHLORIDES "),ncol=3,nrow=1,heights=c(1,1))

ggarrange(d6,f,stable.p6,labels=c("","","CHART \nREGARDING \nFREE SULFER DIOXIDE "),ncol=3,nrow=1,heights=c(1,1))

#ggarrange(d7,g,stable.p7,labels=c("","","CHART \nREGARDING \nTOTAL SULFER DIOXIDE "),ncol=3,nrow=1,heights=c(1,1))
#ggarrange(d8,h,stable.p8,labels=c("","","CHART \nREGARDING \nDENSITY "),ncol=3,nrow=1,heights=c(1,1))
ggarrange(d2,b,stable.p2,labels=c("","","CHART \nREGARDING \nVOLATILE ACIDITY "),ncol=3,nrow=1,heights=c(1,1))
ggarrange(d9,i,stable.p9,labels=c("","","CHART \nREGARDING \npH "),ncol=3,nrow=1,heights=c(1,1))
#####

#here are the descriptions of the above code   
#####

Quality <- levels(as.factor(wine$quality)) ; Quality
abc <- as.factor(wine$quality); abc
QUALITY <- abc

mu1 <- ddply(wine,"quality",summarise,grp.mean=mean(fixed.acidity))
d1 <- ggplot(wine, aes(x=fixed.acidity,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu1, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Fixed Acidity \n Coloured by Quality")+ 
  xlab("Fixed Acidity  ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))

#*
mu2 <- ddply(wine,"quality",summarise,grp.mean=mean(volatile.acidity))
d2 <- ggplot(wine, aes(x=volatile.acidity,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu2, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Volatile Acidity \n Coloured by Quality")+ 
  xlab("Volatile Acidity  ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))


#[1] "fixed.acidity"        "volatile.acidity"     "citric.acid"         
#[4] "residual.sugar"       "chlorides"            "free.sulfur.dioxide" 
#[7] "total.sulfur.dioxide" "density"              "pH"                  
#[10] "sulphates"            "alcohol"              "quality"
#*
mu3 <- ddply(wine,"quality",summarise,grp.mean=mean(citric.acid))
d3 <- ggplot(wine, aes(x=citric.acid,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.6)+
  geom_vline(data=mu3, aes(xintercept=grp.mean,
                           color=Quality),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Citric Acid \n Coloured by Quality")+ 
  xlab("Citric Acid ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
# rjCt it
mu4 <- ddply(wine,"quality",summarise,grp.mean=mean(residual.sugar))
d4 <- ggplot(wine, aes(x=residual.sugar,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu4, aes(xintercept=grp.mean,
                           color=Quality),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Citric Acid \n Coloured by Quality")+ 
  xlab("citric acid ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
#rjct it
mu5 <- ddply(wine,"quality",summarise,grp.mean=mean(chlorides))
d5 <- ggplot(wine, aes(x=chlorides,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.3)+
  geom_vline(data=mu5, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Citric Acid \n Coloured by Quality")+ 
  xlab("citric acid ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
#rjct it
mu6 <- ddply(wine,"quality",summarise,grp.mean=mean(free.sulfur.dioxide))
d6 <- ggplot(wine, aes(x=free.sulfur.dioxide,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.2)+
  geom_vline(data=mu6, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Citric Acid \n Coloured by Quality")+ 
  xlab("citric acid ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
#rjct it
mu7 <- ddply(wine,"quality",summarise,grp.mean=mean(total.sulfur.dioxide))
d7 <- ggplot(wine, aes(x=total.sulfur.dioxide,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu7, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Citric Acid \n Coloured by Quality")+ 
  xlab("citric acid ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
#*
mu8 <- ddply(wine,"quality",summarise,grp.mean=mean(density))
d8 <- ggplot(wine, aes(x=density,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu8, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Density \n Coloured by Quality")+ 
  xlab("Density  ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
#*
mu9 <- ddply(wine,"quality",summarise,grp.mean=mean(pH))
d9 <- ggplot(wine, aes(x=pH,color=QUALITY,
                       fill=quality))+geom_density(alpha=0.5)+
  geom_vline(data=mu9, aes(xintercept=grp.mean,
                           color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of pH \n Coloured by Quality")+ 
  xlab("pH ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))
#*
mu10 <- ddply(wine,"quality",summarise,grp.mean=mean(sulphates))
d10 <- ggplot(wine, aes(x=sulphates,color=QUALITY,
                        fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu10, aes(xintercept=grp.mean,
                            color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Sulphates \n Coloured by Quality")+ 
  xlab("Sulphates ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))


#*
mu11 <- ddply(wine,"quality",summarise,grp.mean=mean(alcohol))
d11 <- ggplot(wine, aes(x=alcohol,color=QUALITY,
                        fill=quality))+geom_density(alpha=0.8)+
  geom_vline(data=mu11, aes(xintercept=grp.mean,
                            color=levels(as.factor(wine$quality))),linetype="dashed")+
  ggtitle("Multivariate Analysis[quality wise densoty plot] ",
          " density plot of Alcohol\n Coloured by Quality")+ 
  xlab("Alcohol ")+ylab("density")+
  theme(legend.position = "top",legend.title = element_text(size = 10))






#[1] "fixed.acidity"        "volatile.acidity"     "citric.acid"         
#[4] "residual.sugar"       "chlorides"            "free.sulfur.dioxide" 
#[7] "total.sulfur.dioxide" "density"              "pH"                  
#[10] "sulphates"            "alcohol"              "quality"


stable<- desc_statby(wine, measure.var = "fixed.acidity",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p1 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "volatile.acidity",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p2 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "citric.acid",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p3 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "residual.sugar",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p4 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "chlorides",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p5 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "free.sulfur.dioxide",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p6 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

#[1] "fixed.acidity"        "volatile.acidity"     "citric.acid"         
#[4] "residual.sugar"       "chlorides"            "free.sulfur.dioxide" 
#[7] "total.sulfur.dioxide" "density"              "pH"                  
#[10] "sulphates"            "alcohol"              "quality"

stable<- desc_statby(wine, measure.var = "total.sulfur.dioxide",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p7 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "density",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p8 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "pH",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p9 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))

stable<- desc_statby(wine, measure.var = "sulphates",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p10 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))


stable<- desc_statby(wine, measure.var = "alcohol",grps = "quality")
stable<- stable[,c("quality","length","mean","median","var")]
stable.p11 <- ggtexttable(round(stable,2),rows=NULL,theme = ttheme("mOrange"))
#   ****




#####


# scatter plot              **********************************************
#####  
R1
R6
R2
R3
#R4
R7
#R6
R5

# here codes
#####
#   ,scales = "free"
#citric.acid,fixed.acidity

r1 <- ggplot(wine,aes(citric.acid,fixed.acidity,color=QUALITY))+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "Fig: A")+
  geom_smooth(method = "lm",se=F)+ggtitle("multivariate analysis" , 
                "Scatter Plot between Citric Acid and Fixed Acidity")+
  xlab("citric acid ") + ylab("Fixed Acidity")+
  theme_bw(base_size = 15)

r11 <- ggplot(wine,aes(citric.acid,fixed.acidity,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "Fig: B")+
  geom_smooth(method = "lm",se=T)+ggtitle("" , "Quality wise separated scatter plot")+
  xlab("Citric Acid ")+ ylab("Fixed Acidity")+
  facet_wrap(~quality)+
  theme_bw(base_size = 15)

R1 <- ggarrange(r1,r11)

#volatile.acidity,citric.acid

r6 <- ggplot(wine,aes(volatile.acidity,citric.acid,color=QUALITY))+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "Fig: A")+
  geom_smooth(method = "lm",se=F)+ggtitle("multivariate analysis" , 
                "Scatter Plot between Citric Acid and Volatile Acidity")+
  xlab("Volatile Acidity")+ylab("citric acid ")+
  theme_bw(base_size = 15)

r61 <- ggplot(wine,aes(volatile.acidity,citric.acid,color=QUALITY))+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "Fig: B")+
  geom_smooth(method = "lm",se=T)+ggtitle("" , "Quality wise separated scatter plot")+
  xlab("Volatile Acidity")+ylab("citric acid ")+
  theme_bw(base_size = 15)+
  facet_wrap(~quality)


R6 <- ggarrange(r6,r61)


#pH,fixed.acidity

r2 <- ggplot(wine,aes(pH,fixed.acidity,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "Fig :1")+
  geom_smooth(method = "lm",se=F)+ggtitle("multivariate analysis" , 
                    "Scatter Plot between pH and Fixed Acidity")+
  ylab("Fixed Acidity")+
  theme_bw(base_size = 15)

r21 <- ggplot(wine,aes(pH,fixed.acidity,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "Fig :2")+
  geom_smooth(method = "lm",se=T)+ggtitle("" , "Quality wise separated scatter plot")+
  ylab("Fixed Acidity")+
  facet_wrap(~quality)+
  theme_bw(base_size = 15)


R2 <- ggarrange(r2,r21)

#fxd acdty and dnsty

r3<- ggplot(wine,aes(fixed.acidity,density,color=QUALITY))+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "fig:a")+
  geom_smooth(method = "lm",se=F)+ggtitle("multivariate analysis" , 
                "Scatter Plot between Density and Fixed Acidity")+
  xlab(" fixed acidity")+
  theme_bw(base_size = 15)

r31 <- ggplot(wine,aes(pH,citric.acid,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "fig:b")+
  geom_smooth(method = "lm",se=T)+ggtitle("" , "Quality wise separated scatter plot")+
  xlab("fixed acidity")+
  facet_wrap(~quality)+
  theme_bw(base_size = 15)


R3 <- ggarrange(r3,r31)

#ph and chlorides

r4 <- ggplot(wine,aes(pH,chlorides,color=QUALITY))+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "")+
  geom_smooth(method = "lm",se=F)+ggtitle("multivariate analysis" , 
               "Scatter Plot between chlorides and pH")+
  theme_bw(base_size = 15)
+
  xlab("mahi's car with mpg of ")

r41 <- ggplot(wine,aes(density,residual.sugar,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "")+
  geom_smooth(method = "lm",se=T)+ggtitle("" , "Quality wise separated scatter plot")+
  facet_wrap(~quality)+
  theme_bw(base_size = 15)


R4 <- ggarrange(r4,r41)

#density,alcohol

r5 <- ggplot(wine,aes(density,alcohol,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "Fig: A")+
  geom_smooth(method = "lm",se=F)+ggtitle("multivariate analysis" , 
                                          "Scatter Plot between Density and Alcohol")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))
+
  xlab("mahi's car with mpg of ")

r51 <- ggplot(wine,aes(density,alcohol,color=QUALITY))+
  stat_density_2d(aes(fill=..level..),geom="polygon")+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "fig:B")+
  geom_smooth(method = "lm",se=T)+ggtitle("" , "Quality wise separated scatter plot")+
  facet_wrap(~quality,scales = "free")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))


R5 <- ggarrange(r5,r51)

#total.sulfur.dioxide,free.sulfur.dioxide

r6 <- ggplot(wine,aes(total.sulfur.dioxide,free.sulfur.dioxide,color=QUALITY))+
  geom_jitter(aes(color=QUALITY),lwd=0.5)+
  labs(caption = "kjbcn")+
  geom_smooth(method = "lm",se=T)+ggtitle("study of cars 1" , "histogram of mpg")+
  xlab("mahi's car with mpg of ")

r61 <- ggplot(wine,aes(total.sulfur.dioxide,free.sulfur.dioxide,color=QUALITY))+
  geom_jitter(aes(color=QUALITY))+
  labs(caption = "kjbcn")+
  geom_smooth(method = "lm",se=T)+ggtitle("study of cars 1" , "histogram of mpg")+
  xlab("mahi's car with mpg of ")+ ylab("numbewr of cars in his room")+
  facet_wrap(~quality,scales = "free")


R6 <- ggarrange(r6,r61)



 #ggplot(wine,aes(total.sulfur.dioxide,free.sulfur.dioxide))+
  stat_density_2d(aes(fill=..level..),geom="polygon")+
  geom_point(aes(col=as.factor(quality)))+geom_jitter()+
  geom_smooth(method = "lm",se=T)+
  labs(substitute="erhgi54nbg")+ggtitle("multivariate analysis" , 
                 "Scatter Plot between Total SO2 & free SO2")+
  xlab("Total SO2 ")+ ylab("Free SO2")+
  theme_bw(base_size = 15)+facet_wrap(~quality)+
  theme(text=element_text(size = 15,colour="blue"))






R7 <- ggplot(wine,aes(total.sulfur.dioxide,free.sulfur.dioxide))+
  stat_density_2d(aes(fill=..level..),geom="polygon")+
  geom_point(aes(col=as.factor(quality)))+geom_jitter()+
  geom_smooth(method = "lm",se=T)+
  labs(substitute="erhgi54nbg")+ggtitle("multivariate analysis" , 
                                        "Quality wise Scatter Plot between Total SO2 & free SO2")+
  xlab("Total SO2 ")+ ylab("Fre SO2")+
  theme_bw(base_size = 15)+facet_wrap(~quality,scales = "free")+
  theme(text=element_text(size = 15,colour="blue"))

+ legend.title = "Correlation"
  xlim(0,150)+ylim(0,62)


#####

### CORRELATION PLOT   *************************************************
  cor1
  cor2
  
# codes below
#####
  cor1 <- ggcorrplot(cor(wine),lab=T,type="lower",
                     outline.color = "green", 
                     ggtheme = theme_bw(), legend.title = "Correlation",lab_size = 3,tl.cex = 12)+
    labs(title = "Corelation Matrix of WINE\nwith Values")+xlab(c("a",2,3,4,5,6,7,8,9,10,11,12))+
    theme(text = element_text(size = 20))+
    theme(plot.title = element_text(hjust = 0.5))
  #+ggplot2::labs(x="X LABEL" , y= "Y LABEL")+
  ggplot2::theme(
    axis.title.x = element_text(angle = 0,colour = "blue"),
    axis.title.y = element_text(angle = 90,colour = "grey20"))
  
  bc <- ggcorrplot(cor(wine[wine$quality>=6,]),lab=T,type="lower",outline.color = "green", 
                   ggtheme = theme_bw(), legend.title = "Correlation",lab_size = 3,tl.cex = 12)+
    labs(title = "Corelation Matrix of WINE with quality>=6 \n with Values")+
    theme(text = element_text(size = 20))+
    theme(plot.title = element_text(hjust = 0.5))
  
  cc <- ggcorrplot(cor(wine[wine$quality<=5,]),lab=T,type="lower",outline.color = "green", 
                   ggtheme = theme_bw(), legend.title = "Correlation",lab_size = 3,tl.cex = 12)+
    labs(title = "Corelation Matrix of WINE with quality<=5 \n with Values")+
    theme(text = element_text(size = 20))+
    theme(plot.title = element_text(hjust = 0.5))
  
  cor2 <- ggarrange(bc,cc)
  
#####

#####

#quality wise boxplot with grouped alcohol *********************************
box1
box2
box3

#codes below
#####
wine2 <- wine
wine2[,11] <- round(wine2[,11])
box11<- wine2%>%
  filter(quality%in% c(3,4,5,6,7,8))%>%
  ggplot(aes(x= factor(round(alcohol)),y=volatile.acidity,fill=QUALITY))+ 
  geom_boxplot()+
  ggtitle("Multivariate Analysis\n[quality wise boxplot with grouped alcohol] ",
          "  Coloured by Quality")+ 
  xlab("Alcohol(in % ) ")+ylab("Volatile Acidity(in g/dm^3)")+labs("quality")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))

box12<- wine2%>%
  filter(quality%in% c(3,4,5,6,7,8))%>%
  ggplot(aes(x= factor(round(alcohol)),y=volatile.acidity,fill=QUALITY))+ 
  geom_boxplot()+
  ggtitle("Multivariate Analysis\n[quality wise boxplot with grouped alcohol] ",
          "  Coloured by Quality")+ 
  xlab("Alcohol(in % ) ")+ylab("Volatile Acidity(in g/dm^3)")+labs("quality")+
  facet_wrap(~alcohol,scales = "free")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))

box1 <- ggarrange(box11,box12)

box21 <- wine2%>%
  filter(quality%in% c(3,4,5,6,7,8))%>%
  ggplot(aes(x= factor(round(alcohol)),y=citric.acid,fill=QUALITY))+ 
  geom_boxplot()+
  ggtitle("Multivariate Analysis\n[quality wise boxplot with grouped alcohol] ",
          "  Coloured by Quality")+ 
  xlab("Alcohol(in % ) ")+ylab("Citric Acid(in g/dm^3)")+labs("quality")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))
#+
facet_wrap(~alcohol,scales = "free")

box22 <- wine2%>%
  filter(quality%in% c(3,4,5,6,7,8))%>%
  ggplot(aes(x= factor(round(alcohol)),y=citric.acid,fill=QUALITY))+ 
  geom_boxplot()+
  ggtitle("Multivariate Analysis\n[quality wise boxplot with grouped alcohol] ",
          "  Coloured by Quality")+ 
  xlab("Alcohol(in % ) ")+ylab("Citric Acid(in g/dm^3)")+labs("quality")+
facet_wrap(~alcohol,scales = "free")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))

box2 <- ggarrange(box21,box22)

##
box31 <- wine2%>%
  filter(quality%in% c(3,4,5,6,7,8))%>%
  ggplot(aes(x= factor(round(alcohol)),y=chlorides,fill=QUALITY))+ 
  geom_boxplot()+
  ggtitle("Multivariate Analysis\n[quality wise boxplot with grouped alcohol] ",
          "  Coloured by Quality")+ 
  xlab("Alcohol(in % ) ")+ylab("cholrides")+labs("quality")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))

box32 <- wine2%>%
  filter(quality%in% c(3,4,5,6,7,8))%>%
  ggplot(aes(x= factor(round(alcohol)),y=chlorides,fill=QUALITY))+ 
  geom_boxplot()+
  ggtitle("Multivariate Analysis\n[quality wise boxplot with grouped alcohol] ",
          "  Coloured by Quality")+ 
  xlab("Alcohol(in % ) ")+ylab("cholrides")+labs("quality")+
  facet_wrap(~alcohol,scales = "free")+
  theme_bw(base_size = 15)+
  theme(text=element_text(size = 15,colour="blue"))

box3 <- ggarrange(box31,box32)


#####

############################################################################

### CORRELATION PLOT
cor1
cor2

# codes below
#####
cor1 <- ggcorrplot(cor(wine),lab=T,type="lower",
           outline.color = "green", 
           ggtheme = theme_bw(), legend.title = "Correlation",lab_size = 3,tl.cex = 12)+
  labs(title = "Corelation Matrix of WINE\nwith Values")+xlab(c("a",2,3,4,5,6,7,8,9,10,11,12))+
  theme(text = element_text(size = 20))+
  theme(plot.title = element_text(hjust = 0.5))
  #+ggplot2::labs(x="X LABEL" , y= "Y LABEL")+
    ggplot2::theme(
    axis.title.x = element_text(angle = 0,colour = "blue"),
    axis.title.y = element_text(angle = 90,colour = "grey20"))

bc <- ggcorrplot(cor(wine[wine$quality>=6,]),lab=T,type="lower",outline.color = "green", 
                 ggtheme = theme_bw(), legend.title = "Correlation",lab_size = 3,tl.cex = 12)+
  labs(title = "Corelation Matrix of WINE with quality>=6 \n with Values")+
  theme(text = element_text(size = 20))+
  theme(plot.title = element_text(hjust = 0.5))

cc <- ggcorrplot(cor(wine[wine$quality<=5,]),lab=T,type="lower",outline.color = "green", 
                 ggtheme = theme_bw(), legend.title = "Correlation",lab_size = 3,tl.cex = 12)+
  labs(title = "Corelation Matrix of WINE with quality<=5 \n with Values")+
  theme(text = element_text(size = 20))+
  theme(plot.title = element_text(hjust = 0.5))

cor2 <- ggarrange(bc,cc)

#####

