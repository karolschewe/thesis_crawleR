library(rvest)
library(jsonlite)
library(stringr)


#3 adres strony jest zbudowany w sposob"
#https://wybory2001.pkw.gov.pl/
#**0000/ <- gwiazdki to kod teryt wojewodztwa
#SSSS**/ gdzie gwiazdka to okreg wyborczy
#******/ kod teryt powiatu
# /sjg2_p.html --- dla procentow na partie
# /sjg1_p.html dla frekwencji i procenta waznych glosow



# z 1997 roku wyniki są na wikipedii





url<-"https://wybory2001.pkw.gov.pl/020000/SSSS01/020100/sjg1_p.html"



page.contents<-read_html(url)



tabelka<-html_node(page.contents,"table")
