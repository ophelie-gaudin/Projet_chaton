
require'faker'

 ["https://i.pinimg.com/564x/03/3b/a3/033ba346ba8324f4c2c5ee0e1e93a259.jpg","https://i.pinimg.com/564x/27/d3/38/27d338aa7fbe9c2845dd947c327c6815.jpg","https://i.pinimg.com/564x/77/d5/9a/77d59aefe7362fac920dc73b65ae491d.jpg","https://i.pinimg.com/564x/04/38/80/043880b89f5690e59673d9b80e665a0c.jpg","https://i.pinimg.com/564x/53/a7/99/53a7993dec90bdc4f01015da5558d75c.jpg","https://i.pinimg.com/564x/0b/d4/10/0bd410eca78f9a3fd470f2d80b543d3b.jpg","https://i.pinimg.com/564x/ff/71/34/ff713443c020a3befbec8506c9706329.jpg","https://i.pinimg.com/564x/6a/66/92/6a66928841baac1cf8b57470fd7628d2.jpg","https://i.pinimg.com/564x/ec/0c/27/ec0c27628a656e5d5d3935511491441c.jpg","https://i.pinimg.com/564x/d5/9b/e5/d59be54f944da82c83c2f0c0b8db8d7b.jpg","https://i.pinimg.com/564x/c7/02/9e/c7029efa8752cd98b3abdee9fbc07866.jpg",
  "https://i.pinimg.com/564x/a6/28/d5/a628d513d692572ffea200cefd4d85fe.jpg","https://i.pinimg.com/564x/e6/4a/48/e64a481a32cea963c1a223e3a78634c7.jpg","https://i.pinimg.com/564x/73/d1/90/73d1900b1a057367ab4350cf8c62beb9.jpg","https://i.pinimg.com/564x/40/f4/80/40f480047130a66c2b4c4cbd3654fb63.jpg","https://i.pinimg.com/564x/01/cd/9f/01cd9f40335a4f77d4cac449ce9f65cb.jpg","https://i.pinimg.com/564x/06/09/a8/0609a8e6065a2facb7b62b2884a8d945.jpg","https://i.pinimg.com/564x/d1/a0/ca/d1a0ca460047c549011553388ca0b812.jpg","https://i.pinimg.com/564x/bc/68/62/bc68622e19ef4ee0fe18b0c1a287aa2c.jpg","https://i.pinimg.com/564x/3f/ee/5a/3fee5a8ad7acb12cf00678a485f41b8d.jpg"]
  .each do |url|

  Item.create(
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Number.decimal(l_digits: 2),
    image_url: url
  )
  end 