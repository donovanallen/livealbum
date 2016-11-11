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

phantogram = Artist.create(name: "Phantogram", nationality: "USA", genre: "Electro Rock", photo_url: "https://cdn0.vox-cdn.com/thumbor/aUYfrZSburBcMMfDOkxn-ICdiVE=/0x75:2000x1408/1280x854/cdn0.vox-cdn.com/uploads/chorus_image/image/49890087/GettyImages-540882094.0.jpg")

voices = Album.create(title: "Voices", year: 2014, artist_id: phantogram.id, photo_url: "http://a3.files.prettymuchamazing.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTMwMTU3NzExNzg5NzA1MjI2.jpg")
three = Album.create(title: "Three", year: 2016, artist_id: phantogram.id, photo_url: "http://cdn3.pitchfork.com/albums/23915/63a47648.jpg")

nothingbuttrouble = Show.create(title: "Nothing But Trouble", year: 2015, album_id: voices.id, artist_id: phantogram.id)
blackoutdays = Show.create(title: "Black Out Days", year: 2015, album_id: voices.id, artist_id: phantogram.id)
fallinlove = Show.create(title: "Fall in Love", year: 2015, album_id: voices.id, artist_id: phantogram.id)
nevergoinghome = Show.create(title: "Never Going Home", year: 2015, album_id: voices.id, artist_id: phantogram.id)
thedayyoudied = Show.create(title: "The Day You Died", year: 2015, album_id: voices.id, artist_id: phantogram.id)
howlingatthemoon = Show.create(title: "Howling at the Moon", year: 2015, album_id: voices.id, artist_id: phantogram.id)
funeralpyre = Show.create(title: "Funeral Pyre", year: 2016, album_id: three.id, artist_id: phantogram.id)
sameoldblues = Show.create(title: "Same Old Blues", year: 2016, album_id: three.id, artist_id: phantogram.id)
youdontgetmehighanymore = Show.create(title: "You Don't Get Me High Anymore", year: 2016, album_id: three.id, artist_id: phantogram.id)
cruelworld = Show.create(title: "Cruel World", year: 2016, album_id: three.id, artist_id: phantogram.id)


tameimpala = Artist.create(name: "Tame Impala", nationality: "Australia", genre: "Psychedelic Rock", photo_url: "http://beardedgentlemenmusic.com/wp-content/uploads/2015/07/Tame-Impala-Band-2015.jpg")

currents = Album.create(title: "Currents", year: 2015, artist_id: tameimpala.id, photo_url: "https://consequenceofsound.files.wordpress.com/2015/04/tame-impala-currents.jpg")
lonerism = Album.create(title: "Lonerism", year: 2012, artist_id: tameimpala.id, photo_url: "http://img2-ak.lst.fm/i/u/ar0/b26ef0952cfb42ea8963a4283789599d")
letithappen = Show.create(title: "Let It Happen", year: 2015, album_id: currents.id, artist_id: tameimpala.id)
thelessiknowthebetter = Show.create(title: "The Less I Know The Better", year: 2015, album_id: currents.id, artist_id: tameimpala.id)
causeimaman = Show.create(title: "Cause I'm a Man", year: 2015, album_id: currents.id, artist_id: tameimpala.id)
themoment = Show.create(title: "The Moment", year: 2015, album_id: currents.id, artist_id: tameimpala.id)
yesimchanging = Show.create(title: "Yes I'm Changing", year: 2015, album_id: currents.id, artist_id: tameimpala.id)
pastlife = Show.create(title: "Past Life", year: 2015, album_id: currents.id, artist_id: tameimpala.id)
elephant = Show.create(title: "Elephant", year: 2016, album_id: lonerism.id, artist_id: tameimpala.id)
feelslikewe = Show.create(title: "Feels Like We Only Go Backwards", year: 2016, album_id: lonerism.id, artist_id: tameimpala.id)
beaboveit = Show.create(title: "Be Above It", year: 2016, album_id: lonerism.id, artist_id: tameimpala.id)
