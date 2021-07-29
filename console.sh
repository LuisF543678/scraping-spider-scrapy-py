scrapy shell 'https://quotes.toscrape.com/'
    scrapy shell 'https://www.import.io/'

response.xpath('//h1/a/text()')

    response.xpath('//.//.//main/section[4]//.//.//h4/text()')
    response.xpath('//*[@id="hero-h1"]/text()')
    response.xpath('//*[@id="data-ops-center"]//.//.//h4/text()')
    response.xpath('//.//.//./section[4]/.//div[1]//.//./p/text()')

response.xpath('//h1/a/text()').get()

response.xpath('//span[@class="text" and @itemprop="text"]/text()').getall()

request.encoding
    utf-8

request.method
    GET

response.headers
    hora de sistema, fecha tipo de texto 

response.body
    obtener toda la pagina


$x('//.//div/div/main/section[4]/div/div/div[1]/div/div/h4').map(x => x.outerText)
["We will do it all for you"]


$x('//*[@id="hero-h1"]').map(x => x.outerText)

$x('//*[@id="data-ops-center"]//.//.//h4').map(x => x.outerText)

$x('//.//.//./section[4]/.//div[1]//.//./p').map(x => x.outerText)
