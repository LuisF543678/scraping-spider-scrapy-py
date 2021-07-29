

#
#   Ejecutar el comando en la consola
#

scrapy shell 'https://quotes.toscrape.com/'

#   Segunda pagina para scraping

    scrapy shell 'https://www.import.io/'


#
#   Comando para ejecutar en la consola
#   Extrae contenido
#

response.xpath('//h1/a/text()')

#   Comando para extraer contenido en formato texto

    response.xpath('//.//.//main/section[4]//.//.//h4/text()')
    response.xpath('//*[@id="hero-h1"]/text()')
    response.xpath('//*[@id="data-ops-center"]//.//.//h4/text()')
    response.xpath('//.//.//./section[4]/.//div[1]//.//./p/text()')

#
#   Comando para obtener todo el texto
#

response.xpath('//h1/a/text()').get()

#
#   Comando paa obtener contenido mediente clases
#
response.xpath('//span[@class="text" and @itemprop="text"]/text()').getall()

#
#   Comando que muestra la codificacion
#

request.encoding
    utf-8


#
#   Comando que muestra los metodos
#

request.method
    GET

#
#   Comando para mostrar los datos del sistema
#

response.headers
    hora de sistema, fecha tipo de texto 

#
#   Comando que muestra todo el contenido de la pagina
#

response.body
    obtener toda la pagina


#
#   Muestra los comandos de scraping del contenido
#   Codigo para scraping web
#

$x('//.//div/div/main/section[4]/div/div/div[1]/div/div/h4').map(x => x.outerText)
["We will do it all for you"]


$x('//*[@id="hero-h1"]').map(x => x.outerText)

$x('//*[@id="data-ops-center"]//.//.//h4').map(x => x.outerText)

$x('//.//.//./section[4]/.//div[1]//.//./p').map(x => x.outerText)
