import scrapy 

class QuotesSpider(scrapy.Spider):
    name = 'quotes'
    start_url = [
        'http://quotes.toscrape.com/'
    ]

    def parse(self, response):
        print('*' * 30)
        print('\n\n')
        print(response.status, response.headers)
        print('\n\n')
        print('*' * 30)
        print('\n\n')

#Console scrapy crawl quotes 