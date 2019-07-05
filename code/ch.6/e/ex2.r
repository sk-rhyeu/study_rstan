install.packages('mvtnorm')
set.seed(123)

beta_rng <- rbeta(n=5, shape1=2.0, shape2=2.0)
#=> [1] 0.3449 0.4353 0.8756 0.5199 0.5364

dirichlet_rng <- gtools::rdirichlet(n=5, alpha=c(0.3, 1.0, 1.0))
#=>
#            [,1]    [,2]   [,3]
# [1,] 0.21866785 0.31802 0.4633
# [2,] 0.20875883 0.02787 0.7634
# [3,] 0.00001059 0.38163 0.6184
# [4,] 0.00161258 0.07058 0.9278
# [5,] 0.05304718 0.18960 0.7574

gamma_rng <- rgamma(n=5, shape=3.0, rate=1.0)
#=> [1] 4.081 3.968 3.707 3.453 2.403

bivariate_normal_rng <- mvtnorm::rmvnorm(n=5, mean=c(0, 1), sigma=matrix(c(2, 1, 1, 3), ncol=2))
#=>
#           [,1]    [,2]
# [1,] -0.002168 -0.9834
# [2,]  0.858101  2.5025
# [3,]  0.178217  3.0613
# [4,] -1.158147  1.3662
# [5,]  0.267530 -0.3769

cauchy_rng <- rcauchy(n=5, location=1, scale=2.5)
#=> [1]   1.757  24.867 -68.135  -6.695   5.314


