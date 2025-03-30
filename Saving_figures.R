install.packages("export")
library(export)

library(effects)
fit=lm(prestige ~ type + income*education, data=Prestige)
plot(Effect(c("income", "education"), fit),multiline=T, ci.style="bands")
graph2ppt(file="effect plot.pptx", width=7, height=5)

#which after right clicking in PPT on "ungroup" can be seen to be nicely in vector format:
#https://cran.r-project.org/web/packages/eoffice/vignettes/eoffice.html
