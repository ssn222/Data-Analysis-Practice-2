library(SDSFoundations)
post <- PostSurvey

# QUESTION 1: Who is happier at the beginning of the semester: underclassmen or upperclassmen?

# Make a vector of happiness scores for each sample
underclass_happy <- post$happy[post$classification=="Freshman"|post$classification=="Sophomore"]
upperclass_happy <- post$happy[post$classification=="Junior"|post$classification=="Senior"]

# Check the normality assumption
hist(underclass_happy, xlab='Percent of Time Happy', main='Underclassmen Happiness')
hist(upperclass_happy, xlab='Percent of Time Happy', main='Upperclassmen Happiness')

# Run independent t-test
t.test(underclass_happy, upperclass_happy)


# QUESTION 2: Does student happiness change from the beginning of the semester to the end?

# Make a vector of difference scores
post$diff_happy <- post$happy - post$post_happy

# Check the normality assumption
hist(post$diff_happy, xlab="Happy - Post Happy", main="Difference in Happiness over the Semester")

# Run dependent t-test
t.test(post$happy, post$post_happy, paired=T)

mean(underclass_happy)
