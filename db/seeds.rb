# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# tameImpala = Artist.create(name: "Tame Impala", nationality: "Australia", genre: "Psychedelic Rock")
# album_name = Album.create(title: "", year: , artist_id: )
# album_name = Album.create(title: "", year: , artist_id: )

Artist.destroy_all
Album.destroy_all
Show.destroy_all
User.destroy_all

#PHANTOGRAM
phantogram = Artist.create(name: "Phantogram", nationality: "USA", genre: "Electro Rock", photo_url: "https://cdn0.vox-cdn.com/thumbor/aUYfrZSburBcMMfDOkxn-ICdiVE=/0x75:2000x1408/1280x854/cdn0.vox-cdn.com/uploads/chorus_image/image/49890087/GettyImages-540882094.0.jpg")
voices = Album.create(title: "Voices", year: 2014, artist_id: phantogram.id, photo_url: "http://a3.files.prettymuchamazing.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTMwMTU3NzExNzg5NzA1MjI2.jpg")
three = Album.create(title: "Three", year: 2016, artist_id: phantogram.id, photo_url: "http://cdn3.pitchfork.com/albums/23915/63a47648.jpg")
nothingbuttrouble = Show.create(title: "Nothing But Trouble", year: 2015, album_id: voices.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/7X42HhygJBM")
blackoutdays = Show.create(title: "Black Out Days", year: 2015, album_id: voices.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/MLYuUPnsEgg")
fallinlove = Show.create(title: "Fall in Love", year: 2015, album_id: voices.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/YeGcwPvMV10")
thedayyoudied = Show.create(title: "The Day You Died", year: 2015, album_id: voices.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/4_1kygUaG5A")
howlingatthemoon = Show.create(title: "Howling at the Moon", year: 2015, album_id: voices.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/_WzzPHv1Fo8")
funeralpyre = Show.create(title: "Funeral Pyre", year: 2016, album_id: three.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/4bGtQdsp_2E")
sameoldblues = Show.create(title: "Same Old Blues", year: 2016, album_id: three.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/21FFMEh9ICE")
youdontgetmehighanymore = Show.create(title: "You Don't Get Me High Anymore", year: 2016, album_id: three.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/jaQgfV4PIlw")
cruelworld = Show.create(title: "Cruel World", year: 2016, album_id: three.id, artist_id: phantogram.id, video_url: "https://www.youtube.com/embed/exEnwwKkTCI")

#TAME IMPALA
tameimpala = Artist.create(name: "Tame Impala", nationality: "Australia", genre: "Psychedelic Rock", photo_url: "http://beardedgentlemenmusic.com/wp-content/uploads/2015/07/Tame-Impala-Band-2015.jpg")
currents = Album.create(title: "Currents", year: 2015, artist_id: tameimpala.id, photo_url: "https://consequenceofsound.files.wordpress.com/2015/04/tame-impala-currents.jpg")
lonerism = Album.create(title: "Lonerism", year: 2012, artist_id: tameimpala.id, photo_url: "http://img2-ak.lst.fm/i/u/ar0/b26ef0952cfb42ea8963a4283789599d")
letithappen = Show.create(title: "Let It Happen", year: 2015, album_id: currents.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/AH1S411Bzmw" )
thelessiknowthebetter = Show.create(title: "The Less I Know The Better", year: 2015, album_id: currents.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/yL4jqJZJxco")
causeimaman = Show.create(title: "Cause I'm a Man", year: 2015, album_id: currents.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/FNBwxPX7D-4")
themoment = Show.create(title: "The Moment", year: 2015, album_id: currents.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/6K3PlnxI-fg")
yesimchanging = Show.create(title: "Yes I'm Changing", year: 2015, album_id: currents.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/nxhqubvkhJA")
elephant = Show.create(title: "Elephant", year: 2016, album_id: lonerism.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/WJ_rxZcFpIs")
feelslikewe = Show.create(title: "Feels Like We Only Go Backwards", year: 2016, album_id: lonerism.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/8F0AFaYedeo")
beaboveit = Show.create(title: "Be Above It", year: 2016, album_id: lonerism.id, artist_id: tameimpala.id, video_url: "https://www.youtube.com/embed/uanEHKkRqdM")

#FLUME
flume = Artist.create(name: "Flume", nationality: "Australia", genre: "Electronica", photo_url: "http://youredm.youredm1.netdna-cdn.com/wp-content/uploads/2016/01/Flume-Orange-Backdrop.jpg?x98500")
flumethealbum = Album.create(title: "Flume", year: 2012, artist_id: flume.id, photo_url: "https://upload.wikimedia.org/wikipedia/en/1/1c/Flume_Deluxe_Edition_album_cover.jpg")
skin = Album.create(title: "Skin", year: 2016, artist_id: flume.id, photo_url: "http://earmilk.com/wp-content/uploads/2016/05/flume-skin.jpg")
holdinon = Show.create(title: "Holdin On", year: 2012, album_id: flumethealbum.id, artist_id: flume.id, video_url: "https://www.youtube.com/embed/nq-xEQf5DYA")
ontop = Show.create(title: "On Top", year: 2012, album_id: flumethealbum.id, artist_id: flume.id, video_url: "https://www.youtube.com/embed/ygF9s1RfOYs")
leftalone = Show.create(title: "Left Alone", year: 2012, album_id: flumethealbum.id, artist_id: flume.id, video_url: "https://www.youtube.com/embed/AvqaJyjE-bg")
sayit = Show.create(title: "Say It", year: 2016, album_id: skin.id, artist_id: flume.id, video_url: "https://www.youtube.com/embed/POfhB6vU0Ns")
neverbelikeyou = Show.create(title: "Never Be Like You", year: 2016, album_id: skin.id, artist_id: flume.id, video_url: "https://www.youtube.com/embed/vNy-CnyEMoA")

#DISCLOSURE
disclosure = Artist.create(name: "Disclosure", nationality: "UK", genre: "House", photo_url: "http://image.iheart.com/images/rovi/1080/0003/767/MI0003767786.jpg")
#ALBUM
settle = Album.create(title: "Settle", year: 2013, artist_id: disclosure.id, photo_url: "https://images-na.ssl-images-amazon.com/images/I/81VfiYEgSrL._SL1400_.jpg")
caracal = Album.create(title: "Caracal", year: 2015, artist_id: disclosure.id, photo_url: "https://images-na.ssl-images-amazon.com/images/I/81YzdvD0c%2BL._SL1400_.jpg")
latch = Show.create(title: "Latch", year: 2014, album_id: settle.id, artist_id: disclosure.id, video_url: "https://www.youtube.com/embed/y9OKiHzjCe0")
whitenoise = Show.create(title: "White Noise", year: 2014, album_id: settle.id, artist_id: disclosure.id, video_url: "https://www.youtube.com/embed/YKG_t4ziTIU")
magnets = Show.create(title: "Magnets", year: 2015, album_id: caracal.id, artist_id: disclosure.id, video_url: "https://www.youtube.com/embed/YeWR8FfXUds")
omen = Show.create(title: "Omen", year: 2015, album_id: caracal.id, artist_id: disclosure.id, video_url: "https://www.youtube.com/embed/KJ5fyYWznZ0")
holdingon = Show.create(title: "Holding On", year: 2015, album_id: caracal.id, artist_id: disclosure.id, video_url: "https://www.youtube.com/embed/ChzDZTGSJ0E")

#MURA MASA
muramasa = Artist.create(name: "Mura Masa", nationality: "UK", genre: "House", photo_url: "http://nationofbillions.com/wp-content/uploads/2016/03/mura_masa_bonzai.jpg")
somedaysomewhere = Album.create(title: "Someday Somewhere", year: 2015, artist_id: muramasa.id, photo_url: "https://f4.bcbits.com/img/a4157583754_10.jpg")
soundtracktoadeath = Album.create(title: "Soundtrack to a Death", year: 2014, artist_id: muramasa.id, photo_url: "https://f4.bcbits.com/img/a1781819387_10.jpg")
lovesick = Show.create(title: "Lovesick", year: 2015, album_id: somedaysomewhere.id, artist_id: muramasa.id, video_url: "https://www.youtube.com/embed/YO_2x8eQchE")
whatifigo = Show.create(title: "What If I Go?", year: 2015, album_id: somedaysomewhere.id, artist_id: muramasa.id, video_url: "https://www.youtube.com/embed/Qit9EA0AC2o")
firefly = Show.create(title: "Firefly", year: 2014, album_id: soundtracktoadeath.id, artist_id: muramasa.id, video_url: "https://www.youtube.com/embed/y1IzLaxmHH4")


donovan = User.create(email: "don@email.com", password: "password")

jon = User.create(email: "jon@email.com", password: "password")
