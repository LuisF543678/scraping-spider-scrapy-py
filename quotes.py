import scrapy

#   Title = //h1/a/text()
#   Citas = //span[@class="text" and @Itempro="text"]/text()
#   Top ten tag = response.xpath('//div/[contains(@class, "tags-box")]//span[@class="tag-item"]/a/text()')getall()


class QuotesSpider(scrapy.Spider):
    name = "quotes"
    start_urls = ["https://quotes.toscrape.com/"]

    def parse(self, response):
        print("*" * 30)
        print("\n\n\n")

        Title = response.xpath('//h1/a/text()').get()
        print(f'Titulo: {Title}')
        print("\n\n\n")


        quotes = response.xpath('//span[@class="text" and @itemprop="text"]/text()').getall()
        print(f'Citas: ')
        for quote in quotes:
            print(f'- {quote}')
        print("\n\n\n")


        top_ten_tags = response.xpath('//div[contains(@class, "tags-box")]//span[@class="tag-item"]/a/text()').getall()
        print('Top ten tags')
        for tag in top_ten_tags:
            print(f'{tag}')

        #   print(response.status, response.headers)
        print("\n\n")
        print("*" * 30)
        print("\n\n")

#Console scrapy crawl quotes 