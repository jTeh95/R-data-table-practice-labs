# DAY ONE
library(data.table)
library(ggplot2)
X = 5
R = X + 'apple'
print(R)

Y = c('Apple', 'orange','mangoes')
F = c(1:10)
print(Y[2])
Y = append(Y,'Banana')
W = 2*F
Q = 3*F
H = 4 + F
A = c(1:3)
Q_mean = mean(Q)
Q_median = median(Q)
Q_sd = sd(Q)
Q_min = min(Q)
Q_max = max(Q)
Q_half_mean = mean(Q[6:10])
Q_half_sd = sd(Q[6:10])
Q_half_median = median(Q[6:10])
v = (1:20000)
v_length = length(v)

v_end = v[(length(v)-9):length(v)]

v_end = v[(length(v)-6):(length(v)-2)]

dt = data.table(Age=c(18, 23, 45, 71, 5), 
                Gender =c('Male','Male','Female','Male', 'Female'), 
                Weight =c(50, 61, 56, 71, 4))
dt_mean_age = mean(dt$Age)
dt_mean_Weight = mean(dt$Weight)
dt_max_Weight = max(dt$Weight)

Age=c(18, 23, 45, 71, 5)

age_max = which.max(Age)
which.max(dt$Age)
dt[which.max(dt$Age),Gender]
dt[which.min(Weight),Age]

dt[Gender=='Male',]

dt[Weight > 18,]

#  DAY TWO
Data =
data.table(var1 = rnorm(1000,1,10),
           var2 = runif(1000,0,1),
           group = sample(c("group a", "group b", "group c"), 1000,replace=TRUE),
           sex = sample(c("male", "female"), 1000,replace=TRUE,prob=c(0.7,0.3)),
           age = round(runif(1000,5,75)))

nrow(Data)
ncol(Data)

age_max = max(Data$age)
age_min = min(Data$age)
age_mean = mean(Data$age)

under_age = Data[age < 10,]

under_age =nrow(Data[age < 10,]) 

Over_age =nrow(Data[age > 50,]) 
per_age = (Over_age/nrow(Data))*100
per_male =  (nrow(Data[sex=='male',])/nrow(Data))*100

number_groups = length(unique(Data$group))
group_a = nrow(Data[group =='group a',])
  
group_a = (nrow(Data[group =='group a',])/nrow(Data))*100


Data2 = data.table(var1 = rnorm(1001,1,10),
                   var2 = runif(1001,0,1),
                   group = sample(c("group a", "group b", "group c", NA), 1001,replace=TRUE,prob=c(0.32,0.32,0.32,0.04)),
                   sex = sample(c("male", "female", "unknown"), 1001,replace=TRUE,prob=c(0.6,0.3,0.1)),
                   age = c(round(runif(500,5,75)),203,NA,NA,round(runif(498,1,80))))
  
Data_col = ncol(Data2)
Data_rows = nrow(Data2)

age_min = min(Data2$age,na.rm=T)

age_max = max(Data2$age, na.rm=T)
 Data2[age < 110]
 
 Data2 =  Data2[age < 110]
 data2_min_age = min(Data2$age)
 data2_max_age = max(Data$age)
mean_age_data2 = mean(Data2$age)

unknown_sex = (nrow(Data2[sex == 'unknown',])/nrow(Data2))*100
per_male = (nrow(Data2[sex == 'male',])/nrow(Data2))*100
per_female = (nrow(Data2[sex == 'female',])/nrow(Data2))*100

data_group = length(unique(Data2$group))

New_data = as.data.table(read.csv('C:\\Users\\AIAH\\Desktop\\R STUDIO\\new_data.csv'))
max_age_new_data =max(New_data$age)
max_age_new_data =max(New_data$age,na.rm=T)
which(New_data$age>100)
New_data2 = New_data[age < 100]
min_age = min(New_data2$age)
max_age = max(New_data2$age)
mean_age = mean(New_data2$age)
pid_duplicate = length(New_data2$patient_id)
unique_pid = length(unique(New_data2$patient_id))

