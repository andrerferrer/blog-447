# All of the below is to show how to seed 
# using images that we will upload to cloudinary

require "open-uri"

ps5_url = 'https://uploads.jovemnerd.com.br/wp-content/uploads/2020/08/sony-abre-registro-para-pre-venda-do-playstation-5.jpg'
file = URI.open(ps5_url)
article = Article.new(title: 'PS5', body: "An amazing incoming console")
article.photo.attach(io: file, filename: 'ps5.jpg', content_type: 'image/jpg')
article.save!
