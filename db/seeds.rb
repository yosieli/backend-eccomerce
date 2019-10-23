# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
AllItem.delete_all
Cart.delete_all

pepper = AllItem.create(item_name: "Pepper", price: 2, image_url:"http://pluspng.com/img-png/pepper-hd-png-pepper-png-pluspng-com-455-pepper-png-455.png", description: "Spicy")
car = AllItem.create(item_name: "Toy Car", price: 5, image_url: "http://pluspng.com/img-png/toy-car-png-free-red-toy-car-kids-toys-toy-car-png-image-and-clipart-650.jpg", description: "Super Fast")
AllItem.create(item_name: "MacBook", price: 5999, image_url: "https://images-na.ssl-images-amazon.com/images/I/61Ti4MxCxKL._SL1500_.jpg", description: "Super Smart")
AllItem.create(item_name: "Headphones", price: 300, image_url: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MQUF2?wid=2104&hei=2980&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1502831144597", description: "Great Sound")
AllItem.create(item_name: "Monitor", price: 120, image_url: "https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&imageId=1270970-847__1&recipeName=350", description: "Great Display")
AllItem.create(item_name: "Keyboard", price: 512, image_url: "https://images-na.ssl-images-amazon.com/images/I/41gipccsZNL._SL500_AC_SS350_.jpg", description: "Great Types")
AllItem.create(item_name: "Mouse", price: 34, image_url: "https://images-na.ssl-images-amazon.com/images/I/71L-ywG9IrL._SX425_.jpg", description: "Great Search")
AllItem.create(item_name: "Soccer Ball", price: 25, image_url: "https://images-na.ssl-images-amazon.com/images/I/61Jigwd1kKL._SX425_.jpg", description: "Rolls")
AllItem.create(item_name: "Basketball Ball", price: 26, image_url: "https://i5.walmartimages.com/asr/0f9285e2-00c7-442e-aeff-cee1cca483de_1.43e5d5da143907b8c3329525d9a44a08.jpeg", description: "Coincidently also Rolls")
AllItem.create(item_name: "Tennis Ball", price: 3, image_url: "https://i5.walmartimages.com/asr/3e097c1a-a776-47df-8cd2-e4c2e65bc535_1.52785b542e42f04eeec56d57b43e7c93.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF", description: "Might Roll")
spiderman = AllItem.create(item_name: "Spiderman Ps4", price: 59, image_url: "https://target.scene7.com/is/image/Target/GUEST_610fd103-2bbb-4f24-a749-088a5411e390?wid=488&hei=488&fmt=pjpeg", description: "Spiderman, Spiderman, does whatever a spider can
    Spins a web any size, catches thieves just like flies
    Look out, here comes the Spiderman
    Is he strong? Listen bud, he's got radioactive blood
    Can he swing from a thread? Take a look overhead
    Hey, there! There goes the Spiderman
    In the chill of the night At the scene of a crime
    Like a streak of light he arrives just in time
    Spiderman, Spiderman, friendly neighborhood, Spiderman
    Wealth and fame, he ignores, action is his reward
    Look out, here comes the Spiderman
    Spiderman, Spiderman, friendly neighborhood, Spiderman
    Wealth and fame, he ignores, action is his reward
    To him, life's a great big bang up, whenever there's a hang up, 
    You'll find the Spiderman!")
AllItem.create(item_name: "Iron Man", price: 5, image_url: "https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/293565/413843/feb198967__17908.1554990947.jpg?c=2&imbypass=on", description: "Just keeping an eye on spiderman")
AllItem.create(item_name: "Samsung S 10", price: 1000, image_url: "https://www.khouryhome.com/media/catalog/product/cache/1/image/900x900/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung_s10_black.jpg", description: "Slowly Loosing ideas as to what to display")
AllItem.create(item_name: "IPhone", price: 1001, image_url: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone7-select-2019-family?wid=882&amp;hei=1058&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1550795429263", description: "Here to best samsung")
AllItem.create(item_name: "Huawei", price: 1002, image_url: "https://assets.croma.com/medias/sys_master/images/images/hd1/h86/8848640507934/197999_pjpeg.jpg", description: "Here to best apple")
AllItem.create(item_name: "Google Chrome", price: 0, image_url: "https://img.etimg.com/thumb/msid-68333505,width-643,imgsize-204154,resizemode-4/googlechrome.jpg", description: "Heard your computer had ram")
AllItem.create(item_name: "Ferrari", price: 50999, image_url: "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/vdat/submodels/ferrari_f8-tributo_ferrari-f8-tributo_2020-1551387467009.jpg", description: "Heard there was a toy car that thought he was fast")
AllItem.create(item_name: "Pencils", price: 5, image_url: "https://images-na.ssl-images-amazon.com/images/I/91vUDQSh-oL._SX425_.jpg", description: "They write")


hk72 = User.create(username: "hk72", password:"1")
hk73 = User.create(username: "hk73", password:"2")

Cart.create(user_id: hk72.id, item_id: pepper.id  ,quantity: 1, item_name: pepper.item_name, price: pepper.price, image_url: pepper.image_url)
Cart.create(user_id: hk73.id, item_id: car.id, quantity: 1, item_name: car.item_name , price: car.price, image_url: car.image_url)

Favorite.create(user_id: hk72.id, item_id: pepper.id, item_name: pepper.item_name, price: pepper.price, image_url: pepper.image_url, description: pepper.description)
Favorite.create(user_id: hk72.id, item_id: spiderman.id, item_name: spiderman.item_name, price: spiderman.price, image_url: spiderman.image_url, description: spiderman.description)
Favorite.create(user_id: hk73.id, item_id: car.id, item_name: car.item_name, price: car.price, image_url: car.image_url, description: car.description)
puts "We seeded"