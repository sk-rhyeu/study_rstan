data {
  int N;  // 기사 수
  int G;  // 게임 수
  int<lower=1, upper=N> LW[G, 2];  // 각 게임의 승자와 패자
}

parameters {
  ordered[2] performance[G];
  vector[N] mu;
  real<lower=0> s_mu;
  vector<lower=0>[N] s_pf;
}

model {
  for (g in 1:G)
    for (i in 1:2)
      performance[g, i] ~ normal(mu[LW[g, i]], s_pf[LW[g, i]]);

  mu ~ normal(0, s_mu);
  s_pf ~ gamma(10, 10);
}
