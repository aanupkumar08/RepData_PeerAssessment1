
R version 3.5.1 (2018-07-02) -- "Feather Spray"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(ggplot2)
> library(dplyr)
Error: package or namespace load failed for ‘dplyr’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘tidyselect’
> install.packages("dplyr")
Installing package into ‘C:/Users/Anoop Mishra/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies ‘tidyselect’, ‘plogr’

trying URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/tidyselect_0.2.4.zip'
Content type 'application/zip' length 621253 bytes (606 KB)
downloaded 606 KB

trying URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/plogr_0.2.0.zip'
Content type 'application/zip' length 18728 bytes (18 KB)
downloaded 18 KB

trying URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/dplyr_0.7.6.zip'
Content type 'application/zip' length 3054165 bytes (2.9 MB)
downloaded 2.9 MB

package ‘tidyselect’ successfully unpacked and MD5 sums checked
package ‘plogr’ successfully unpacked and MD5 sums checked
package ‘dplyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Anoop Mishra\AppData\Local\Temp\RtmpAReWce\downloaded_packages
> library(dplyr)

Attaching package: ‘dplyr’

The following object is masked from ‘package:ggplot2’:

    vars

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> library(chron) 
Error in library(chron) : there is no package called ‘chron’
> install.packages("chron")
Installing package into ‘C:/Users/Anoop Mishra/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
trying URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/chron_2.3-53.zip'
Error in download.file(url, destfile, method, mode = "wb", ...) : 
  cannot open URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/chron_2.3-53.zip'
In addition: Warning message:
In download.file(url, destfile, method, mode = "wb", ...) :
  InternetOpenUrl failed: 'The operation timed out'
Warning in download.packages(pkgs, destdir = tmpd, available = available,  :
  download of package ‘chron’ failed
> install.packages("chron")
Installing package into ‘C:/Users/Anoop Mishra/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
trying URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/chron_2.3-53.zip'
Error in download.file(url, destfile, method, mode = "wb", ...) : 
  cannot open URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/chron_2.3-53.zip'
In addition: Warning message:
In download.file(url, destfile, method, mode = "wb", ...) :
  InternetOpenUrl failed: 'A connection with the server could not be established'
Warning in download.packages(pkgs, destdir = tmpd, available = available,  :
  download of package ‘chron’ failed
> install.packages("chron")
Installing package into ‘C:/Users/Anoop Mishra/Documents/R/win-library/3.5’
(as ‘lib’ is unspecified)
trying URL 'https://ftp.iitm.ac.in/cran/bin/windows/contrib/3.5/chron_2.3-53.zip'
Content type 'application/zip' length 198914 bytes (194 KB)
downloaded 194 KB

package ‘chron’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Anoop Mishra\AppData\Local\Temp\RtmpAReWce\downloaded_packages
> a <- read.csv("C:\Users\Anoop Mishra\Documents\GitHub\RepData_PeerAssessment1\activity.csv", header = TRUE)
Error: '\U' used without hex digits in character string starting ""C:\U"
> getwd()
[1] "C:/Users/Anoop Mishra/Documents"
> setwd("/Documents/GitHub/RepData_PeerAssessment1")
Error in setwd("/Documents/GitHub/RepData_PeerAssessment1") : 
  cannot change working directory
> getwd()
[1] "C:/Users/Anoop Mishra/Documents"
> setwd("C:/Users/Anoop Mishra/Documents/GitHub/RepData_PeerAssessment1")
> getwd()
[1] "C:/Users/Anoop Mishra/Documents/GitHub/RepData_PeerAssessment1"
> a <- read.csv("activity.csv", header = TRUE)
> source("lmPlot.R")
Error in file(filename, "r", encoding = encoding) : 
  cannot open the connection
In addition: Warning message:
In file(filename, "r", encoding = encoding) :
  cannot open file 'lmPlot.R': No such file or directory
> head(a)
  steps       date interval
1    NA 2012-10-01        0
2    NA 2012-10-01        5
3    NA 2012-10-01       10
4    NA 2012-10-01       15
5    NA 2012-10-01       20
6    NA 2012-10-01       25
> aggsteps<- aggregate(steps ~ date, a, FUN=sum)
> head(aggsteps)
        date steps
1 2012-10-02   126
2 2012-10-03 11352
3 2012-10-04 12116
4 2012-10-05 13294
5 2012-10-06 15420
6 2012-10-07 11015
> ist(aggsteps$steps, 
+      col="red", 
+      xlab = "Frequency", 
+      ylab = "Steps",
+      main = "Total Number Of Steps Taken Each day")
Error in ist(aggsteps$steps, col = "red", xlab = "Frequency", ylab = "Steps",  : 
  could not find function "ist"
> hist(aggsteps$steps, 
+      col="red", 
+      xlab = "Frequency", 
+      ylab = "Steps",
+      main = "Total Number Of Steps Taken Each day")
> amean <- mean(aggsteps$steps)
> amedian <- median(aggsteps$steps)
> amean
[1] 10766.19
> amedian
[1] 10765
> agginterval <- aggregate(steps ~ interval, a, FUN=sum)
> plot(agginterval$interval, agginterval$steps, 
+      type = "l", lwd = 2,
+      xlab = "Interval", 
+      ylab = "Total Steps",
+      main = "Total Steps vs. 5-Minute Interval")
> filter(agginterval, steps==max(steps))
  interval steps
1      835 10927
> table(is.na(a))

FALSE  TRUE 
50400  2304 
> meaninterval<- aggregate(steps ~ interval, a, FUN=mean)
> anew <- merge(x=a, y=meaninterval, by="interval")
> anew$steps <- ifelse(is.na(anew$steps.x), anew$steps.y, anew$steps.x)
> head(anew)
  interval steps.x       date  steps.y    steps
1        0      NA 2012-10-01 1.716981 1.716981
2        0       0 2012-11-23 1.716981 0.000000
3        0       0 2012-10-28 1.716981 0.000000
4        0       0 2012-11-06 1.716981 0.000000
5        0       0 2012-11-24 1.716981 0.000000
6        0       0 2012-11-15 1.716981 0.000000
> anew <- select(anew, steps, date, interval)
> head(anew)
     steps       date interval
1 1.716981 2012-10-01        0
2 0.000000 2012-11-23        0
3 0.000000 2012-10-28        0
4 0.000000 2012-11-06        0
5 0.000000 2012-11-24        0
6 0.000000 2012-11-15        0
> aggsteps_new<- aggregate(steps ~ date, anew, FUN=sum)
> par(mfrow=c(1,2))
> hist(aggsteps_new$steps, 
+      col="green",
+      xlab = "Steps", 
+      ylab = "Frequency",
+      ylim = c(0,35),
+      main = "Total Number Of Steps Taken Each day \n(After imputing NA values with \n mean of 5-min interval)",
+      cex.main = 0.7)
> hist(aggsteps$steps, 
+      col="red", 
+      xlab = "Steps", 
+      ylab = "Frequency",
+      ylim = c(0,35),
+      main = "Total Number Of Steps Taken Each day \n(Orginal Dataset)",
+      cex.main = 0.7)
> par(mfrow=c(1,1))
> amean_new <- mean(aggsteps_new$steps)
> amedian_new <- median(aggsteps_new$steps)
> paste("New Mean      :", round(amean_new,2), "," ,  
+       " Original Mean :", round(amean,2),"," , 
+       " Difference :",round(amean_new,2) -  round(amean,2))
[1] "New Mean      : 10766.19 ,  Original Mean : 10766.19 ,  Difference : 0"
> paste("New Median    :", amedian_new, ",", 
+       " Original Median :", amedian,"," , 
+       " Difference :",round(amedian_new-amedian,2))
[1] "New Median    : 10766.1886792453 ,  Original Median : 10765 ,  Difference : 1.19"
> table(is.weekend(anew$date))
Error in is.weekend(anew$date) : could not find function "is.weekend"
> library(chron)
> table(is.weekend(anew$date))

FALSE  TRUE 
12960  4608 
> anew$dayofweek <- ifelse(is.weekend(anew$date), "weekend", "weekday")
> table(anew$dayofweek)

weekday weekend 
  12960    4608 
> head(anew)
     steps       date interval dayofweek
1 1.716981 2012-10-01        0   weekday
2 0.000000 2012-11-23        0   weekday
3 0.000000 2012-10-28        0   weekend
4 0.000000 2012-11-06        0   weekday
5 0.000000 2012-11-24        0   weekend
6 0.000000 2012-11-15        0   weekday
> meaninterval_new<- aggregate(steps ~ interval + dayofweek, anew, FUN=mean)
> head(meaninterval_new)
  interval dayofweek      steps
1        0   weekday 2.25115304
2        5   weekday 0.44528302
3       10   weekday 0.17316562
4       15   weekday 0.19790356
5       20   weekday 0.09895178
6       25   weekday 1.59035639
> ggplot(meaninterval_new, aes(x=interval, y=steps)) + 
+   geom_line(color="blue", size=1) + 
+   facet_wrap(~dayofweek, nrow=2) +
+   labs(x="\nInterval", y="\nNumber of steps")
> 
