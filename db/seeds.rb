# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cart.destroy_all
Order.destroy_all
Booking.destroy_all
Item.destroy_all
User.destroy_all

user = User.new
user.email = 'stan_pollet@decoswap.com'
user.password = 'decoswap'
user.save!


item1 = Item.new(
  name: "C-chair",
  size: "65*40*80",
  price_cents: 3000,
  status: "Free",
  description:
  "Sitting comfortably is important. Our chairs also come in handy for paying the bills, helping with the homework or just talking with the people you love.",
  color: "Beige",
  condition: "New",
  designer: "",
  design_period: "2010",
  materials: "Wood",
  category_item: "Chairs")
item1.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480509229/rbpmn8ieodqgsbbzvvck.jpg"]

item2 = Item.new(
  name: "White Cloud",
  size: "50*60*85",
  price_cents: 3000,
  status: "Free",
  description: "For you, we've designed the most confortable sofa. Try it, it feels like if your were sitting in the clouds",
  condition: "New",
  designer: "Dark Father",
  design_period: "2016",
  materials: "Leather",
  category_item: "Chairs")
item2.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481709824/sofa-1_isquxj.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481709824/sofa-2_ksvwge.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481709824/sofa-3_gzl1vc.jpg"]


item3 = Item.new(
  name: "Gypset",
  size: "65*50*80",
  price_cents: 3000,
  status: "Free",
  description: "Sitting comfortably is important. Sitting with great style is too. We have combined both.",
  color: "Gray",
  condition: "New",
  designer: "Starck",
  design_period: "2004",
  materials: "Wood",
  category_item: "Chairs")
item3.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480510365/adkpsozdsdvjnpb6reqn.jpg"]
item4 = Item.new(
  name: "Rising waters",
  size: "120*80*7",
  price_cents: 3000,
  status: "Free",
  description: "While walking in Paris, Minou took a wonderful picture, a picture of calm and peace in one of the busiest city. An artwork",
  color: "Black",
  condition: "New",
  designer: "Minh",
  design_period: "2015",
  materials: "Canvas",
  category_item: "Paintings")
item4.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480510595/uluu8emclrydcp1s2nra.jpg"]
item5 = Item.new(
  name: "Wood puddle",
  size: "60*40*30",
  price_cents: 1000,
  status: "Free",
  description: "Pure wood mixed with a pure design. No better representation of the forest spirit",
  color: "Brown",
  condition: "New",
  designer: "",
  design_period: "2009",
  materials: "Wood",
  category_item: "Tables")
item5.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480510844/tf0p6kbzpe1q22oig6gq.jpg"]

item6 = Item.new(
  name: "Pixar",
  size: "20*20*150",
  price_cents: 3000,
  status: "Free",
  description: "Floor lamps offer an easy-to-add lighting solution for any space, even if you don’t have much room.",
  color: "Black",
  condition: "New",
  designer: "",
  design_period: "2009",
  materials: "Aluminium",
  category_item: "Lamps")
item6.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480510191/tpraydo6ksmmzaytou1p.jpg"]

item7 = Item.new(
  name: "Balance",
  size: "65*50*80",
  price_cents: 3000,
  status: "Free",
  description: "Sitting comfortably is important. Feeling balanced and free is also. We have combined both",
  color: "Beige",
  condition: "New",
  designer: "Grandpa John",
  design_period: "",
  materials: "Wood",
  category_item: "Chairs")
item7.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480511084/edordil2yb77o6bn14gj.jpg"]
item8 = Item.new(
  name: "Telescope Lamp",
  size: "20*20*150",
  price_cents: 3000,
  status: "Free",
  description: "Nights will no longer be scary. They'll be cosy",
  color: "White",
  condition: "New",
  designer: "The Swedish Company",
  design_period: "2015",
  materials: "Wood",
  category_item: "Lamps")
item8.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480511280/i3bhx0s97a5hjhdjdz51.jpg"]
item9 = Item.new(
  name: "Focused Nature",
  size: "45*100*5",
  price_cents: 3000,
  status: "Free",
  description: "Focus. Focus on the calm and the purity of this picture. Houdihou signs here a marvellous picture.",
  color: "Black",
  condition: "New",
  designer: "Houdihou",
  design_period: "2012",
  materials: "Canvas",
  category_item: "Paintings")
item9.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480511503/iqbdfemueq2dqrfmbqg7.jpg"]
item10 = Item.new(
  name: "Stable table",
  size: "60*40*30",
  price_cents: 1000,
  status: "Free",
  description: "Tables. Tables are the place we share things. Get I great one.",
  color: "Brown",
  condition: "New",
  designer: "The Swedish Company",
  design_period: "2013",
  materials: "Wood",
  category_item: "Tables")
item10.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480511674/xcpnhix16jtg7qzbho2i.jpg"]
item11 = Item.new(
  name: "Vase Chair ",
  size: "65*50*80",
  price_cents: 7000,
  status: "Free",
  description: "Sitting comfortably is important. Sitting with great style is too. We have combined both.",
  color: "Gray",
  condition: "New",
  designer: "Norsign",
  design_period: "2016",
  materials: "Wood",
  category_item: "Chairs")
item11.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480511792/jjlkoduddekghc6867ze.jpg"]
item12 = Item.new(
  name: "Tall Hugs",
  size: "50*150*8",
  price_cents: 3000,
  status: "Free",
  description: "Often brutal and wild, savanna is a dangerous place for giraffes. And when things get dangerous, there's nothing better than love to fight it.",
  color: "Black",
  condition: "New",
  designer: "The an.on.ym.ous photograph",
  design_period: "2014",
  materials: "Canvas",
  category_item: "Paintings")
item12.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480512003/zuaxk8kakpzaokmbmgok.jpg"]
item13 = Item.new(
  name: "The Table.",
  size: "70*50*40",
  price_cents: 3000,
  status: "Free",
  description: "A perfect table. Nothing more, nothing less.",
  color: "Light Brown",
  condition: "New",
  designer: "The Swedish Company",
  design_period: "",
  materials: "Wood",
  category_item: "Tables")
item13.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480512102/htjt0szqtfyiqhuo9urg.jpg"]
item14 = Item.new(
  name: "Dusty shower",
  size: "160*100*6",
  price_cents: 3000,
  status: "Free",
  description: "Stolen picture of an elephant taking a shower. \"One of my greatest\" says S.P the photograph.",
  color: "Black",
  condition: "New",
  designer: "S.P",
  design_period: "2004",
  materials: "Canvas",
  category_item: "Paintings")
item14.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480512493/lf4wrhdiveg0qh1yilwr.jpg"]


item21 = Item.new(
  name: "Jonah",
  size: "82*84*89",
  price_cents: 3000,
  status: "Free",
  description: "We’re a bit emotional about Jonah. It was one of our first ever designs, and it’s been a customer favourite ever since. So we thought a re-vamp was well deserved. Check out the new Spearmint Green fabric.",
  color: "Warm",
  condition: "New",
  designer: "James Harrison",
  design_period: "2007",
  materials: "Wood",
  category_item: "Sofas")
item21.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481561801/2nd%20seed/jonah1.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481561801/2nd%20seed/jonah2.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481561801/2nd%20seed/jonah3.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481561801/2nd%20seed/jonah4.webp",
]

item22 = Item.new(
  name: "Movie Studio",
  size: "30*40*120",
  price_cents: 3000,
  status: "Free",
  description:
  "Shhhhhhhh ..... ! We're filming.... annnnd Actionnn !!!",
  color: "Black",
  condition: "New",
  designer: "The Movie furnisher",
  design_period: "2010",
  materials: "Metal",
  category_item: "Lamps")
  item22.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705989/projo-1_imdril.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705989/projo-2_s3ivvv.jpg"]



item26 = Item.new(
  name: "Back To The Future",
  size: "42*59",
  price_cents: 3000,
  status: "Free",
  description: "Illustrator Ale Giorgini has a talent for transforming your favourite cult films into comics. If you’re a Back To The Future fan then you need this print, now.",
  color: "Black",
  condition: "New",
  designer: "Ale Giorgino",
  design_period: "1992",
  materials: "Canvas",
  category_item: "Paintings")
item26.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565198/2nd%20seed/back_to_the_future1.png",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565198/2nd%20seed/back_to_the_future2.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565198/2nd%20seed/back_to_the_future3.png",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565198/2nd%20seed/back_to_the_future4.png",
]


item27 = Item.new(
  name: "Vulpes Vulpes",
  size: "42*59*3",
  price_cents: 3000,
  status: "Free",
  description: "Hungary-based artist Robert Farkas creates artwork by digitally layering traditional watercolour. Vulpes Vulpes is the Latin name of the red fox, the star of piece.",
  color: "Warm",
  condition: "New",
  designer: "Bert Farkas",
  design_period: "2014",
  materials: "Canvas",
  category_item: "Paintings")
item27.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565734/2nd%20seed/vulpes_vulpes1.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565734/2nd%20seed/vulpes_vulpes2.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481565734/2nd%20seed/vulpes_vulpes3.webp"]

item28 = Item.new(
  name: "Tribute to Stan",
  size: "42*59",
  price_cents: 3000,
  status: "Free",
  description: "S.P been a great inspiration for generations of giraffe lovers. Here again an exemple of his influence.",
  color: "Warm",
  condition: "New",
  designer: "Spforever",
  design_period: "2016",
  materials: "Canvas",
  category_item: "Paintings")
item28.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481621634/2nd%20seed/spinspiration.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481621634/2nd%20seed/spinspiration2.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481621634/2nd%20seed/spinspiration3.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481621634/2nd%20seed/spinspiration4.webp",
]


item31 = Item.new(
  name: "Danish Chair",
  size: "65*40*80",
  price_cents: 3000,
  status: "Free",
  description:
  "The best chair to sit comfortably while speaking with the one you love.",
  color: "Black",
  condition: "New",
  designer: "Danish",
  design_period: "2010",
  materials: "Wood",
  category_item: "Chairs")
  item31.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705991/chair-black-1_qiplif.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705991/chair-black-2_jrbigy.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705991/chair-black-3_ladixc.jpg"]


item32 = Item.new(
  name: "Black Clock",
  size: "40*40*10",
  price_cents: 3000,
  status: "Free",
  description:
  "Our time is running out, You can't push it underground, You can't stop it screaming out",
  color: "Black",
  condition: "New",
  designer: "Mr Swatch",
  design_period: "2015",
  materials: "Wood",
  category_item: "Clocks")
  item32.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/clock-black-2_nwxoa7.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705991/clock-black-1_sfi3gl.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/clock-black-3_mmvkgl.jpg"]


item33 = Item.new(
  name: "Night Buddy",
  size: "65*40*10",
  price_cents: 3000,
  status: "Free",
  description:
  "It's the best moment of the day, it's bed time. Grab a book, turn the light on and enjoy. Have a good night, we'll see you tomorrow.",
  color: "Black",
  condition: "New",
  designer: "Mr Swatch",
  design_period: "2015",
  materials: "Metal",
  category_item: "Lamps")
  item33.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/lamp-pixi_bptywn.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/lamp-pixi-2_xgtehk.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707233/lamp-pixi-3_igucvy.jpg"]

item34 = Item.new(
  name: "Industrial Seat",
  size: "60*60*100",
  price_cents: 3000,
  status: "Free",
  description:
  "You've earn it, com'on, grab a cigare, sit down, relax and breathe. That's right, life is great, life is cool so enjoy",
  color: "Black",
  condition: "New",
  designer: "Vicinstruial",
  design_period: "2016",
  materials: "Leather",
  category_item: "Chairs")
  item34.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/leather-1_gnc4l9.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/leather-2_rmgwwn.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/leather-3_nqif89.jpg"]

item35 = Item.new(
  name: "Studio lighting",
  size: "25*35*65",
  price_cents: 3000,
  status: "Free",
  description:
  "Like us, you've always dream to be a photograph, travel around the world and take breathtaking pictures. Now you can do it at Home",
  color: "Black",
  condition: "New",
  designer: "M&E",
  design_period: "2013",
  materials: "Metal",
  category_item: "Lamps")
  item35.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705990/photograph-1_fczk9b.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705989/photograph-2_fjmyqa.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705989/photograph-3_oaqe4i.jpg"]



item36 = Item.new(
  name: "Jenson",
  size: "55*110*43",
  price_cents: 3000,
  status: "Free",
  description: "Based on a 60s telephone bench, this storage piece from our Jensen range fuses the best of mid-century design with modern luxury.",
  color: "Beige",
  condition: "New",
  designer: "Tim Fenby",
  design_period: "2015",
  materials: "Wood",
  category_item: "Tables")
item36.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563738/2nd%20seed/jenson1.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563738/2nd%20seed/jenson2.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563738/2nd%20seed/jenson3.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563738/2nd%20seed/jenson4.webp",
]

item37 = Item.new(
  name: "Dinner Table",
  size: "100*100*85",
  price_cents: 3000,
  status: "Free",
  description:
  "Tables are for people to be together, tell jokes, stories and share. Sharing is what brings us together.",
  color: "White",
  condition: "New",
  designer: "The Movie furnisher",
  design_period: "2015",
  materials: "Wood",
  category_item: "Tables")
  item37.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481721571/table-white-1-1_i7gpcy.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705989/table-white-2_symhyl.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481705989/table-white-3_zokoxs.jpg"]

item38 = Item.new(
  name: "Black Hole",
  size: "120x10x30",
  price_cents: 3000,
  status: "Free",
  description: "You can put anything you want in it, it will fit nice on your table",
  color: "Black",
  condition: "New",
  designer: "Mr. Noir",
  design_period: "2010",
  materials: "Metal",
  category_item: "Accessories")
item38.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707847/black_vase_arvlsr.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707847/black_vase_02_hlemvr.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707847/black_vase_03_cfduxv.jpg"]

item39 = Item.new(
  name: "Boule Jaune",
  size: "86*43*51",
  price_cents: 3000,
  status: "Free",
  description: "Chinese Designer Mr Jaune will let the sunshine in your home.",
  color: "Warm",
  condition: "New",
  designer: "Mr.Jaune",
  design_period: "2016",
  materials: "Plastic",
  category_item: "Lamps")
item39.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707847/yellow_lamp_ob6pyu.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707847/yellow_lamp_03_rdijwq.jpg",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707848/yellow_lamp_02_unfjvx.jpg"]

item40 = Item.new(
  name: "Dark Light",
  size: "22*43*51",
  price_cents: 3000,
  status: "Free",
  description: "Enlight your ideas with this futuristic desk lamp",
  color: "Black",
  condition: "New",
  designer: "Dark Father",
  design_period: "2016",
  materials: "Plastic",
  category_item: "Lamps")
item40.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481707846/black_lamp__nrsbjh.jpg"]


item42 = Item.new(
  name: "Wall Clock",
  size: "50*50*8",
  price_cents: 3000,
  status: "Free",
  description: "Classic wooden clock which gives time. ",
  color: "White",
  condition: "New",
  designer: "",
  design_period: "2013",
  materials: "Wood",
  category_item: "Clocks")
item42.photo_urls = ["http://res.cloudinary.com/dhrqyxgzp/image/upload/v1480510973/qyzg2imxcyjtqzuk29fk.jpg"]

item43 = Item.new(
  name: "Fonteyn",
  size: "75*90*50",
  price_cents: 3000,
  status: "Free",
  description: "This dressing table is elegantly balanced with slender, tapered legs and gracefully curved edges. Topped by a stylish round mirror.",
  color: "Beige",
  condition: "New",
  designer: "Steuart Padwick",
  design_period: "2016",
  materials: "Wood",
  category_item: "Tables")
item43.photo_urls = [
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563143/2nd%20seed/fonteyn1.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563143/2nd%20seed/fonteyn2.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563143/2nd%20seed/fonteyn3.webp",
  "http://res.cloudinary.com/dhrqyxgzp/image/upload/v1481563146/2nd%20seed/fonteyn4.webp",
]

item1.save
item2.save
item3.save
item4.save
item5.save
item6.save
item7.save
item8.save
item9.save
item10.save
item11.save
item12.save
item13.save
item14.save
item21.save
item22.save
item26.save
item27.save
item28.save
item31.save
item32.save
item33.save
item34.save
item35.save
item36.save
item37.save
item38.save
item39.save
item40.save
item42.save
item43.save

