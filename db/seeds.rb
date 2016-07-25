User.destroy_all

User.create(username: "Roberta", password: "password", admin: false)
User.create(username: "RobertaAdmin", password: "password", admin: true)
User.create(username: "Mozzie", password: "lindo", admin: false)

Ski.destroy_all

Ski.create(name: "corvus freebird", brand: "black crows", gender_id: 1, category_id: 3, width: 109, length: 175, image: "https://commercecdn.com/1044735434531274893/46c38786-c2ca-4b24-9008-6fe54153df0a.jpeg")

Ski.create(name: "PB&J", brand: "Moment", gender_id: 2, category_id: 4, width: 101, length: 182, image: "http://images.evo.com/imgp/zoom/68940/340687/clone.jpg")

Ski.create(name: "Elysian", brand: "Atomic", gender_id: 1, category_id: 4, width: 95, length: 168, image: "http://winterbadass.com/wp-content/uploads/2014/07/Atomic-Elysian-Skis.jpg")

Ski.create(name: "Brahma", brand: "Blizzard", gender_id: 2, category_id: 2, width: 88, length: 187, image: "http://images.evo.com/imgp/zoom/81011/380167/clone.jpg")

Listing.destroy_all
User.third.listings.create(price: 350, image: "http://www.tetongravity.com/forums/attachment.php?attachmentid=149092&d=1390455977", ski_id: Ski.find_by(name: "PB&J").id)

User.third.listings.create(price: 400, image: "http://thumbs3.ebaystatic.com/d/l225/pict/251952299685_1.jpg", ski_id: Ski.find_by(name: "Brahma").id)

User.first.listings.create(price: 450, image: "https://www.ski-depot.com/sites/default/files/styles/tall/public/products/AA0024294_0.jpg?itok=V0iwjfpj", ski_id: Ski.find_by(name: "Elysian").id)

User.first.listings.create(price: 300, image: "http://image.geartrade.com/userimages/1/0/101681817554bbdbb9780d6.jpg", ski_id: Ski.find_by(name: "Brahma").id)
