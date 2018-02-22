require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://news.google.com/news/headlines/section/topic/ENTERTAINMENT'))


    @title = page.xpath('//*[@id="yDmH0d"]/c-wiz/div/div[2]/main/div[1]/c-wiz/div/c-wiz[1]/c-wiz/div/div[2]/c-wiz/a').text

    # @body = page.xpath('//*[@id="yDmH0d"]/c-wiz/div/div[3]/main/div[1]/div[2]/c-wiz/div/c-wiz[1]/c-wiz/div/div[2]/c-wiz[2]/a').text
    
    @source = page.xpath('//*[@id="yDmH0d"]/c-wiz/div/div[2]/main/div[1]/c-wiz/div/c-wiz[1]/c-wiz/div/div[2]/c-wiz/div/span[1]').text
    
    
    @title_url = page.css('#yDmH0d > c-wiz > div > div.fWwQIb.ChVoCd.rOrCPc.AfWyGd > main > div.KaRWed.XogBlf > c-wiz > div > c-wiz.PaqQNc.QwxBBf.f2t20b.PBWx0c > c-wiz > div > div.v4IxVd > c-wiz > a').attr('href')
    
    @image_url = page.css('#yDmH0d > c-wiz > div > div.fWwQIb.ChVoCd.rOrCPc.AfWyGd > main > div.KaRWed.XogBlf > c-wiz > div > c-wiz.PaqQNc.QwxBBf.f2t20b.PBWx0c > c-wiz > div > div.X20oP > a > img').attr('src')

    puts "Title: #{@title}"
    
    puts "Title: #{@image_url}"

    puts "Title: #{@title_url}"

    puts "Title: #{@source}"