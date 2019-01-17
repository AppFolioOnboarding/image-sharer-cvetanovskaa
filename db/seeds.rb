# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url_array = %w[
  https://media.alienwarearena.com/media/1327-p.jpg
  https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg
  https://wallpaperbrowse.com/media/images/3848765-wallpaper-images-download.jpg
  https://thewallpaper.co/wp-content/uploads/2016/02/cute-beagle-dog-full-hd-wallpaper-images-new-best-desktop-background-download-free-cute-doggy-puffy-dogs-1600x1200-768x576.jpg
  https://lifestyle.inquirer.net/files/2018/04/44216470_S.jpg
  https://www.elastic.co/assets/bltada7771f270d08f6/enhanced-buzz-1492-1379411828-15.jpg
  https://images.freeimages.com/images/small-previews/2fe/butterfly-1390152.jpg
  https://www.gettyimages.ie/gi-resources/images/Homepage/Category-Creative/UK/UK_Creative_462809583.jpg
  http://s1.bwallpapers.com/wallpapers/2014/05/09/blue-images_034357941.jpg
  https://media.mnn.com/assets/images/2016/11/closeup-baby-robin-beak-open.jpg.653x0_q80_crop-smart.jpg
  https://media.mnn.com/assets/images/2018/07/baby-alpaca-cria.jpg.653x0_q80_crop-smart.jpg
  https://image.freepik.com/free-photo/water-landscape-scenery-natural-blue-ancient_1417-1224.jpg
  https://cdnb.artstation.com/p/assets/covers/images/002/745/237/medium/mathias-vera-toro-gecko-posed.jpg
  https://i.pinimg.com/736x/11/21/e5/1121e5d6237bccf9f1395e36294846f8--arctic-animals-arctic-fox.jpg
  https://stmed.net/sites/default/files/rabbit-wallpapers-25592-663035.jpg
  http://azdan.com.sa/images/portfolio/115493.jpg
  https://cdn.theatlantic.com/assets/media/img/photo/2015/11/images-from-the-2016-sony-world-pho/s01_130921474920553591/main_900.jpg
  http://www.thinkstockphotos.com/ts-resources/images/home/TS_AnonHP_462882495_01.jpg
  https://cdn1-www.dogtime.com/assets/uploads/2015/07/GettyImages-829378994.jpg
  https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/A-G/gray-wolf-closeup.ngsversion.1466679921382.adapt.1900.1.jpg
]

url_array.each do |url|
  Image.create(url: url)
end
