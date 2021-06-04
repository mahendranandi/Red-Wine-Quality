
#install.packages("ggpubr")
#install.packages("easyGgplot2")
#install.packages("dplyr")
#install.packages("ggplot2")
#install.packages("PerformanceAnalytics")
#install.packages("corrplot")
#install.packages("psych")
#install.packages("plyr")
#install.packages("ggcorrplot")


wine <- read.csv("winequality.csv",header = T)
#wine

sum(complete.cases(wine))
sum(is.na(wine))

dim(wine)  #1599*12
head(wine)
str(wine)
summary(wine)

################
###################################
t <- as.data.frame(table(wine$quality));t


table <- wine %>% arrange(desc(quality)) %>% 
        mutate() ; table
Quality <- t$Var1
ggplot(t,aes(x=2,y=Freq,fill=Quality))+
        geom_bar(stat="identity",color="white")+
        coord_polar(theta = "y",start=0)+
        scale_fill_manual(values = t$Freq)+
        xlim(0.03,2.5) +theme_void()+ggtitle("uhfueh","iudbiue")
#ggbarplot(wine, x= "quality", y="pH",sort.by.groups = TRUE, color = "GREEN")

mn <- mean(wine$quality) ; mn       
s_d<- sd(wine$quality);s_d
curve(dnorm(x,mean =0.64,sd=5000.8))
curve(dnorm(x,mean = mn,sd=s_d)/max(wine$quality), col="red", lwd=5, add =TRUE)
#plot(y=wine$quality,x= "")
barplot(table(wine$quality))
hist(wine$quality,breaks = 6)
line(density(table(wine$quality)),col="Red")
s_normal <- rnorm(length(wine$quality),mean = mean(wine$quality),sd(wine$quality))
lines(density(s_normal,adjust = 2),col="Blue",lwd=4)
barplot(wine, names.arg = wine$quality,  space = c(0,diff(wine$quality)),
                col="orange" , xlab="quality level",ylab=" Total No Of Sample ")
####################################################
table(wine$quality)
#plot(wine)
#plot(wine$citric.acid, wine$quality)
#barplot(wine$citric.acid)


#plot(wine)
plot(wine[wine$quality>7,],)
plot(wine[wine$volatile.acidity>=0.3 & wine$volatile.acidity<= 0.5 & wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
                  wine$residual.sugar<=4])


#dim(wine[wine$volatile.acidity>=0.3 & wine$volatile.acidity<= 0.5 & wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
#            wine$residual.sugar<=4 & wine$total.sulfur.dioxide<=20  ,])        #[1] 81 12

#dim(wine[wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
#           wine$residual.sugar<=4 & wine$total.sulfur.dioxide<=20 & wine$quality>=6 ,])        #[1] 116 12  and also 32 for 7,8  85 for 6,7,8  


#dim(wine[wine$volatile.acidity>=0.3 & wine$volatile.acidity<= 0.5 & wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
#           wine$residual.sugar<=4 & wine$total.sulfur.dioxide<=20 & wine$quality>=7  ,])        #[1] 59  for 6,7,8 23 for 7,8

plot(wine[wine$volatile.acidity>=0.3 & wine$volatile.acidity<= 0.5 & wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
                  wine$residual.sugar<=4 & wine$total.sulfur.dioxide<=20  ,])





#plot(wine[,1:4])
#plot(wine[,7:11])
#plot(wine[,1:6],wine[,7:11])
#plot(wine[,1:3],wine[,3:4])  # of no use

#########################
par(mfrow=c(1,6))

boxplot(wine$fixed.acidity)
boxplot(wine$volatile.acidity)
boxplot(wine$citric.acid)
boxplot(wine$residual.sugar)
boxplot(wine$chlorides)
boxplot(wine$free.sulfur.dioxide)

boxplot(wine$total.sulfur.dioxide)
boxplot(wine$sulphates)
boxplot(wine$density)
boxplot(wine$pH)
boxplot(wine$alcohol)
boxplot(wine$quality)

# boxplot  modified

p11<- boxplot(wine$fixed.acidity,horizontal = T,col = "blue", notch = T)
p21<- boxplot(wine$volatile.acidity,horizontal = T,col = "blue", notch = T)
p31 <- boxplot(wine$citric.acid,horizontal = T,col = "blue", notch = T)
p41 <- boxplot(wine$residual.sugar,horizontal = T,col = "blue", notch = T)
p51 <- boxplot(wine$chlorides,horizontal = T,col = "blue", notch = T)
p61 <- boxplot(wine$free.sulfur.dioxide,horizontal = T,col = "blue", notch = T)

p71 <- boxplot(wine$total.sulfur.dioxide,horizontal = T,col = "blue", notch = T)
p81 <-boxplot(wine$sulphates,horizontal = T,col = "blue", notch = T)
p91 <-boxplot(wine$density,horizontal = T,col = "blue", notch = T)
p101 <-boxplot(wine$pH,horizontal = T,col = "blue", notch = T)
p111 <-boxplot(wine$alcohol,horizontal = T,col = "blue", notch = T)

#########################  ATA NAOA JETE PARE 
par(mfrow=c(1,1))
boxplot(wine[wine$quality<=5,6],xaxt="n",add = F, boxfill="blue",
        boxwex=0.25,at=4-0.75)
boxplot(wine[wine$quality>5,6],xaxt="n",add = T, boxfill="red",
        boxwex=0.25,at=4+0.25)

boxplot(wine[wine$quality<=5,7],xaxt="n",add = T, boxfill="blue",
        boxwex=0.15,at=4+.75)
boxplot(wine[wine$quality>5,7],xaxt="n",add = T, boxfill="red",
        boxwex=0.15,at=4-0.45)

boxplot(wine[wine$quality<=5,3],xaxt="n",add = T, boxfill="blue",
        boxwex=0.25,at=4+.25)
boxplot(wine[wine$quality>5,3],xaxt="n",add = T, boxfill="red",
        boxwex=0.25,at=4-0.25)





#boxplot(wine[,1:11])


#######################
par(mfrow=c(1,1))

# citric acid 

par(mfrow=c(1,5))

boxplot(wine[wine$quality==7,]$citric.acid) 
boxplot(wine[wine$quality==6,]$citric.acid)
boxplot(wine[wine$quality==5,]$citric.acid)
boxplot(wine[wine$quality==4,]$citric.acid)
boxplot(wine[wine$quality==3,]$citric.acid)

par(mfrow=c(1,3))
boxplot(wine[wine$quality==8 | wine$quality==7,]$citric.acid)
boxplot(wine[wine$quality==6 | wine$quality==5,]$citric.acid)
boxplot(wine[wine$quality==4 | wine$quality==3,]$citric.acid)




#sum(wine$quality==7 | wine$quality==6 | wine$quality==5)
#sum(wine$quality==c(3,4))
#wine$quality[wine$quality==c(3,4,5,6,7)]
#table(wine$quality)
#wine$quality==c(4)

###################...............##############################
#barplot(wine$quality)
#plot(wine$citric.acid)
library(ggplot2)
#plot(density(wine$citric.acid))  # take it
#hist(wine$citric.acid, breaks = 1000)
#ggplot(wine,wine$citric.acid)+geom_freqpoly()
#geom_density(wine$citric.acid)
#hist(density(wine$citric.acid))
#lines(wine$citric.acid)
#rug(wine$citric.acid)


####################.................###########################

par(mfrow=c(2,3))
plot(density(wine$fixed.acidity))  # take it
plot(density(wine$volatile.acidity))  # take it
plot(density(wine$citric.acid))  # take it
plot(density(wine$residual.sugar))  # take it
plot(density(wine$chlorides))  # take it
plot(density(wine$quality))  # take it

plot(density(wine$free.sulfur.dioxide))  # take it
plot(density(wine$total.sulfur.dioxide))  # take it
plot(density(wine$density))  # take it
plot(density(wine$pH))  # take it
plot(density(wine$sulphates))  # take it
plot(density(wine$alcohol)) + geom_boxplot(wine$alcohol) # take it



par(mfrow=c(1,1))
#boxplot.matrix(wine$volatile.acidity ,use.cols = T)

#boxplot.matrix(wine,use.cols = T)


#########################

library(dplyr)
#wine
par(mfrow=c(2,3))
layout(matrix(c(1,1,2,3),2,2,byrow = T),widths = c(3,1),heights = c(1,2))


#colnames(wine)
#                [1] "fixed.acidity"        "volatile.acidity"    
#                [3] "citric.acid"          "residual.sugar"      
#                [5] "chlorides"            "free.sulfur.dioxide" 
#                [7] "total.sulfur.dioxide" "density"             
#                [9] "pH"                   "sulphates"           
#                [11] "alcohol"              "quality" 

# i got better type having marks line of mean
#ggplot(wine, aes(x=wine$volatile.acidity))+ geom_density(col="red",fill="yellow",alpha=0.4)+
        labs(title = "density plot of ---",x="ctrc acd",y="bxj")
#ggplot(wine, aes(x=wine$citric.acid))+ geom_density(col="red",fill="yellow",alpha=0.4)+
        labs(title = "density plot of ---",x="ctrc acd",y="bxj")

#ggplot(wine,aes(x=citric.acid),fill=levels(as.factor(wine$quality)))+ geom_density()+
        labs(title="ubcueb",x="jhc",y="ihfnei",subtitle = "ihcvihvcwcvbwibcwib")

## scattar plot rejected 
#plot(wine$free.sulfur.dioxide,wine$total.sulfur.dioxide,
     main = "jbfjbsc",sub="i am gcvstgvhd hj hbdebc hjhfhe h",
     xlab ="jbsjd",
     ylab="jbiw",
     col=wine$quality,
     pch=wine$quality, cex.lab=3,cex.axis=2,cex.main=4, cex.sub=1.5)


#legend("topleft",
       legend = c("qlty8","qlty7","jbdjw","hgcu","idhie",'5',"6","7"),
       col = 1:10,
       pch=1:3) #Error in match.arg(x, c("bottomright", "bottom", "bottomleft", "left",  : 
#                'arg' should be one of "bottomright", "bottom", "bottomleft", "left", 
#                "topleft", "top", "topright", "right", "center"

#plot(wine$volatile.acidity,wine$pH,
     main = "jbfjbsc",
     xlab="jbsjd",
     ylab="jbiw",
     col=wine$quality,
     pch=wine$quality)

##################################
# better (2*3) dnsity plot                                         ********************
p<- ggplot(wine,aes(x=citric.acid))+
        geom_density(color="darkblue",fill="green") + geom_vline(aes(xintercept=mean(citric.acid)),
                                    color="blue", linetype='dashed',size=1)+
        ggtitle("jhbcjsbc","mmmmm\nmmmmmmm")+ xlab("mahiiii")  ;p
##################################                                  *************************

# should be taken
library(plyr)

mu <- ddply(wine,"quality",summarise,grp.mean=mean(citric.acid));mu
#is.data.frame(mu)
p <- ggplot(wine, aes(x=wine$citric.acid,color=as.factor(wine$quality),
                      fill=quality))+geom_density(alpha=0.8)+
        geom_vline(data=mu, aes(xintercept=grp.mean,lwd=0.51,
                                color=levels(as.factor(wine$quality))),
                   linetype="dashed")+
        ggtitle("Multivariate Analysis[quality wise densoty plot] ",
                " density plot of Citric Acid \n Coloured by Quality")+ xlab("citric acid ")+ylab("density")+
        theme(legend.position = "top",legend.title = element_text(size = 20));p
Quality <- as.factor(wine$quality) 
mu <- ddply(wine,"quality",summarise,grp.mean=mean(volatile.acidity));mu
m <- ggplot(wine, aes(x=wine$volatile.acidity,color=Quality,
                      fill=quality))+geom_density(alpha=0.8)+
        geom_vline(data=mu, aes(xintercept=grp.mean,lwd=1,
                                color=levels(as.factor(wine$quality))),
                   linetype="dashed")+
        ggtitle("jhbcjsbc","mmmmm\nmmmmmmm")+ xlab("citric acid ")+ylab("density")+
        theme(legend.position = "top",legend.title = element_text(size = 20));m

library(ggpubr)
theme_set(theme_pubr())
stable<- desc_statby(wine, measure.var = "volatile.acidity",grps = "quality")
stable<- stable[,c("quality","length","mean","sd","var")]

stable.p <- ggtexttable(stable,rows=NULL,theme = ttheme("mOrange"))
text<- paste("ihere you can see",
             "bvjkebvjbejkvbjekbv\nkjvbjks vhje vd",
             "jkhcbwiunckjrsbvbl \njkbvjknbjhlsbcmbluuigmhctuyosgbmtmybg",sep = ""); text
text.p <- ggparagraph(text=text, face="italic",size = 11, color = "black")

ggarrange(q, stable.p,text.p,ncol=1,nrow=3,heights=c(1.5,0.5,0.3))


multi.page <- ggarrange(a,b,c,d,e,f,
                        nrow = 2,ncol = 3)
multi.page[[1]]
#ggexport(multi.page,filename = "multi.page.ggplot2.pdf")







######################
a <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=fixed.acidity, fill=factor(quality)))+
 geom_boxplot(notch = F)
b <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=volatile.acidity, fill=factor(quality)))+
 geom_boxplot(notch = F)
c <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=citric.acid, fill=factor(quality)))+
 geom_boxplot(notch = F)
d <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=residual.sugar, fill=factor(quality)))+
 geom_boxplot(notch = F)
e <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=chlorides, fill=factor(quality)))+
 geom_boxplot(notch = F)
f <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=free.sulfur.dioxide , fill=factor(quality)))+
 geom_boxplot(notch = F)
#install.packages("ggpubr")


g <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y= total.sulfur.dioxide, fill=factor(quality)))+
 geom_boxplot(notch = F)
h <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y= density, fill=factor(quality)))+
 geom_boxplot(notch = F)
i <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=pH , fill=factor(quality)))+
 geom_boxplot(notch = F)
j <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=sulphates , fill=factor(quality)))+
 geom_boxplot(notch = F)
k <- wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=quality,y=alcohol , fill=factor(quality)))+
 geom_boxplot(notch = F)

library(ggpubr)
mahiA_D <- ggarrange(a,b,c,d,labels=c("hysrehydrjtydjfgjytjtdjbv",
                                      "hihh","ggu","jdsnfje","uknvr"),ncol=2,nrow=2);mahiA_D
mahiE_H[[1]]

mahiE_H <- ggarrange(e,f,g,h,labels=c("hbv","hihh","ggu","JLNCUKJSNVKJ SRJ"),ncol=2,nrow=2) 
mahiI_K <- ggarrange(i,j,k,labels=c("hbv","hihh","ggu","JLNCUKJSNVKJ SRJ"),ncol=3,nrow=1)

#ggexport(mahiA_D,filename = "mahi1.ggplot2.pdf")
#ggexport(mahiE_H,filename = "mahi2.ggplot2.pdf")
#ggexport(mahiI_K,filename = "mahi3.ggplot2.pdf")

par(mfrow=c(1,1))

wine$volatile.acidity

plot(wine$volatile.acidity,wine$citric.acid)

x <- cbind(wine$quality,wine$quality,wine$quality)
y <- cbind(wine$volatile.acidity,wine$citric.acid,wine$alcohol)
y <- cbind(wine$citric.acid,wine$alcohol)
matplot(x,y,type = "pl")
#matplot(x,type = "pl")
#matplot(y,type = "pl")
#for (c in wine) plot(c,type="l") 



######################### aktu vul achhe thii koprte hobe  *********************** 
wine%>% filter(quality %in% c(3,4,5,6,7,8)) %>% 
 ggplot(aes(x=wine[,c(1)],y=citric.acid, fill=factor(quality)))+
 geom_boxplot()


w8 <-wine[wine$quality==8,] 
w7 <-wine[wine$quality==7,]
w6 <-wine[wine$quality==6,] 
w5 <-wine[wine$quality==5,] 
w4 <-wine[wine$quality==4,] 
w3 <-wine[wine$quality==3,] 


#plot(w7$volatile.acidity,w7$citric.acid)
par(mfrow=c(2,3))
scatter.smooth(w7$volatile.acidity,w7$citric.acid)+theme(colors(distinct = T))
scatter.smooth(w6$volatile.acidity,w6$citric.acid)
scatter.smooth(w5$volatile.acidity,w5$citric.acid)
scatter.smooth(w4$volatile.acidity,w4$citric.acid)

scatter.smooth(w8$volatile.acidity,w8$citric.acid)

#scatter.smooth(wine$volatile.acidity,wine$citric.acid)
#scatter.smooth(wine$alcohol,wine$citric.acid)

par(mfrow=c(2,3))

#ggplot2.scatterplot(data=wine)

# nothing special
scatter.smooth(w7$alcohol,w7$sulphates)
scatter.smooth(w6$alcohol,w6$sulphates)
scatter.smooth(w5$alcohol,w5$sulphates)
scatter.smooth(w4$alcohol,w4$sulphates)

scatter.smooth(w8$alcohol,w8$sulphates)
library(easyGgplot2)
# yes important 
scatter.smooth(w7$pH,w7$citric.acid)
scatter.smooth(w6$pH,w6$citric.acid)
scatter.smooth(w5$pH,w5$citric.acid)
scatter.smooth(w4$pH,w4$citric.acid)

scatter.smooth(wine$pH,wine$citric.acid)
scatter.smooth(wine$alcohol,wine$sulphates)









1+2

library(psych)
cor_plot <- pairs.panels(wine[1:4],hist.col = "green")
#pairs.panels(wine[5:12])
#pairs.panels(wine[1:3])

ggarrange(cor_plot,ncol = 1,nrow = 2)
ggarr
#library(PerformanceAnalytics)
#chart.Correlation(wine[1:4])

wineG <- wine[wine$quality>=6,];dim(wineG)
wineB <- wine[wine$quality<=5,];dim(wineB)


pairs.panels(wineG[1:12])
pairs.panels(wineB[1:12])
1+2

cor(wineG[])

#bb <- head(wine), +annotation_custom(tableGrob(bb))
#### rejected 
bp <- ggbarplot(wine, x= "quality", y="pH",fill="quality",color="blue",
                palette = "jco",sort.val = "asc",sort.by.groups = TRUE); bp

ggbarplot(wine[wine$quality>=7,], x= "quality", y="pH",sort.by.groups = TRUE)

head(mtcars)

ggscatter(wine, x= "citric.acid", y="alcohol",
          add = "reg.line",conf.int = TRUE,color = "quality",
          palette = "jco",shape= as.factor(wine$quality))+
        stat_cor(aes(color=quality), lebel.x =3)

ggscatter(wine, x= "citric.acid", y="alcohol",color = "quality",
          add = "reg.line",conf.int = TRUE,shape= as.factor(wine$quality))+
        stat_cor(aes(color=quality), lebel.x =3)

####
avg_alco <- aggregate(alcohol~quality,data=wine,FUN = mean )
avg_alco_c <- aggregate(alcohol~citric.acid,data=wine,FUN = mean )
avg__ph <- aggregate(citric.acid~pH,data=wine,FUN = mean)
ggplot(avg_alco , aes( quality,alcohol))+
        geom_col(aes(colour=quality))+
        theme(axis.text.x = element_text(angle = 90,vjust=0.5,hjust=1))+
        labs(title="bcnufwsvdvvbsb")

ggplot(avg_alco_c , aes( citric.acid,alcohol))+
        geom_col(aes(colour=citric.acid))+
        theme(axis.text.x = element_text(angle = 90,vjust=0.5,hjust=1))+
        labs(title="bcnufwsvdvvbsb")








# kajer plot

ggplot(avg_alco , aes( quality,alcohol))+
        geom_col(aes(colour=quality))+
        theme(axis.text.x = element_text(angle = 90,vjust=0.5,hjust=1))+
        labs(title="bcnufwsvdvvbsb")
###
   ## kajer plot

ggplot(wine,aes(pH,fixed.acidity))+
        geom_jitter(aes(colour=quality))+
        labs(caption = "kjbcn")+
        geom_smooth(method = "lm",se=T)+
        geom_line(color="red",data = )




###
#########################################################################################################################################
### work is in progress
df<- diamonds%>% group_by(cut)%>%summarise( counts=count(cut) ) ; df


df <- wine%>%group_by(quality)%>%summarise(counts=count(quality)) ; df
head(df)
dim(df)

ggplot(df,aes(x=df$cut,y=counts))+
        geom_bar(fill="blue", stat="identity")
wineQ <- df %>% 
        mutate(prop= round(df$count$freq*100/sum(df$count$freq),1),lab.ypos=cumsum(prop)-0.5*prop)
#m <- round(quality*100/sum(quality))
head(wineQ)
dim(wineQ)
c <- wineQ$count$x ; c
ggplot(wineQ,aes(x="",y=,fill=c))+ 
        geom_bar(width = 1,color="blue")+
        geom_text(aes(y=df$count$freq , label=prop),color="green")+
        coord_polar(theta = "y", start=0)+
        scale_fill_manual(values = t$Freq)+
        theme_void()
ggplot(wineQ,aes(x="",y=wineQ$prop))+geom_bar()

prop= round(df$count$freq*100)/sum(df$count$freq); prop

###

#plot(wine)
plot(wine[wine$quality>7,],)
plot(wine[wine$volatile.acidity>=0.3 & wine$volatile.acidity<= 0.5 & 
                  wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
                  wine$residual.sugar<=4,])

plot(wine[wine$volatile.acidity>=0.3 & wine$volatile.acidity<= 0.5 & 
                  wine$citric.acid>=0.4 & wine$citric.acid<=0.6 & 
                  wine$residual.sugar<=4 & wine$total.sulfur.dioxide<=20  ,])     
# here i have plotted those points which lies on aprox. feasible region

###

