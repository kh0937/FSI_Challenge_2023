
# install VSRUF

# install.packages("VSURF")

# toy example of VSRUF using Ozone Dataset
require(VSURF)

set.seed(3101318)

# 100 observations and 200 variables

data('toys')

# first stage
toys.thres <- VSURF_thres(toys$x, toys$y, mtry = 100)

toys.thres$varselect.thres

plot(toys.vsurf, step = "thres", imp.mean = FALSE, ylim = c(0, 2e-4))

# second_stage

toys.interp <- VSURF_interp(toys$x, toys$y,
                            vars = toys.thres$varselect.thres)


toys.interp$varselect.interp

toys.pred <- VSURF_pred(toys$x, toys$y,
                        err.interp = toys.interp$err.interp,
                        varselect.interp = toys.interp$varselect.interp)

# final stage
toys.pred$varselect.pred
