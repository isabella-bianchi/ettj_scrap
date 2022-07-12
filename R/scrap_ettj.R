scrap_ettj <- function() {

  GetTDData::ettj <- get.yield.curve()

  colnames(ettj)[1] <- "dias_uteis"
  colnames(ettj)[2] <- "variavel"
  colnames(ettj)[3] <- "valor"
  colnames(ettj)[4] <- "data_referencia"
  colnames(ettj)[5] <- "data_coleta"

  hoje <- ettj$data_coleta[1]

  assign(paste0("ettj_",hoje), ettj)

  rm(ettj,hoje)

  }
