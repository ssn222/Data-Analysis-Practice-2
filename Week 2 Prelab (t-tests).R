library(SDSFoundations)
bull = BullRiders

# Prelab question: Is the average weight of male US bullriders significantly different than the average weight of US men?

# Subset data
USA <- bull[bull$Country=="USA",]

# Summarize bullriders weights
mean(USA$Weight)
sd(USA$Weight)

# Visualize distribution
hist(USA$Weight, xlab = 'Weight (lbs)')

# Run single sample t-test
t.test(USA$Weight, mu = 190)
