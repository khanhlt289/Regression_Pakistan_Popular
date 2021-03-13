# Xay dung mo hinh hoi quy tuyen tinh giua dan so Pakistan va ti le tang truong hang nam
# tu nam 1980 den 2019 o khu vuc nong thon
# Du lieu nguon: WorldBank

data_popular_rural <- c(56147611, 57783345, 59554314, 61384677, 63251625, 65138833, 67043052, 68964166,
                  70891610, 72817260, 74733493, 76630022, 78510965, 80404597, 82349795, 84371245, 
                  86480356, 88662973, 90904566, 93179311, 95395819, 97542768, 99630010, 101684618,
                  103741796, 105829500, 107953132, 110103932, 112275602, 114454984, 116631399, 
                  118801037, 120968850, 123148456, 125349873, 127581406, 129844974, 132134976,
                  134404267, 136637556)

data_rate_rural <-    c(2.759566164,2.871645184,3.018815114,3.027150724,2.996057523,2.940006545,
                  2.881409577,2.825205617,2.756505449,2.680092416,2.597534344,2.506057362,
                  2.424936449,2.38330546,2.390461608,2.425067725,2.469064538,2.492507147,
                  2.496786959,2.471548113,2.350903943,2.225617648,2.117249645,2.041261842,
                  2.002903844,1.992422725,1.986786144,1.972758611,1.953182472,1.922501206,
                  1.883693298,1.843161002,1.808293859,1.785751249,1.771822451,1.764582785,
                  1.758659187,1.748271444,1.70282305,1.647966737)

ln_data_popular_rural <- log(data_popular_rural)
glm_model1 <- glm(data_popular_rural ~ data_rate_rural)
summary(glm_model1)

lm_model2 <- lm(ln_data_popular_rural ~ data_rate_rural)
summary(lm_model2)

lm_model3 <- lm(data_popular_rural ~ data_rate_rural)
summary(lm_model3)

# 
# # Xay dung ham rieng
# logexp <- function(days = 1)
# {
#   linkfun <- function(mu) qlogis(mu^(1/days))
#   linkinv <- function(eta) plogis(eta)^days
#   mu.eta  <- function(eta) days * plogis(eta)^(days-1) *
#     binomial()$mu.eta(eta)
#   valideta <- function(eta) TRUE
#   link <- paste0("logexp(", days, ")")
#   structure(list(linkfun = linkfun, linkinv = linkinv,
#                  mu.eta = mu.eta, valideta = valideta, name = link),
#             class = "link-glm")
# }
# (bil3 <- binomial(logexp(3)))
