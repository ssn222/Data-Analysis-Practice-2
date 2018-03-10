library(SDSFoundations)
post <- PostSurvey

#Q1

post$hw_hours_diff <- post$hw_hours_college-post$hw_hours_HS

hist(post$hw_hours_diff)
mean(post$hw_hours_diff)

t.test(post$hw_hours_HS, post$hw_hours_college, paired=T, alternative='less')


# Q2

greeks <- post[post$greek=="yes",]
non_greeks <- post[post$greek=="no",]

hist(greeks$sleep_Sat)
hist(non_greeks$sleep_Sat)

t.test(greeks$sleep_Sat, non_greeks$sleep_Sat, alternative="less")

mean(greeks$sleep_Sat) - mean(non_greeks$sleep_Sat)
