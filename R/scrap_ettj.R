scrap_ettj <- function() {

  GetTDData::ettj <- get.yield.curve()

  colnames(ettj)[1] <- "dias_uteis"
  colnames(ettj)[2] <- "variavel"
  colnames(ettj)[3] <- "valor"
  colnames(ettj)[4] <- "data_referencia"
  colnames(ettj)[5] <- "data_coleta"

  hoje <- ettj$data_coleta[1]

  writexl::write_xlsx(ettj,paste0("C:/Users/e-isabella.bianchi/CNI - Confederação Nacional da Indústria/ECON - Análise econômica/5 Equipe/Sales/CurvaDeJuros/dados/","ettj_",hoje,".xlsx"))

}
