puts "🌱 Seeding accommodation..."
a1 = Accommodation.create(name: "Riu Cancun - All Inclusive", location: "Mexico", image: "https://ik.imagekit.io/vonlhgv94ld/hotel-riu-cancun_dZHv76c-s.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644990486700", like: 20 )
a2 = Accommodation.create(name: "Las Ventanas al Paraiso, A Rosewood Resort" , location: "Mexico", image: "https://ik.imagekit.io/vonlhgv94ld/cabo__mex?ik-sdk-version=javascript-1.4.3&updatedAt=1644991074243" , like: 50)
a3 = Accommodation.create(name: "Half Moon, Montego Bay" , location: "Jamaica", image: "https://ik.imagekit.io/vonlhgv94ld/002301-01-Infinity_Pool_Sunrise_-_Eclipse_at_Half_Moon-Half_Moon__Jamaica_8ghPzMtuy.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644991314839", like: 45)
a4 = Accommodation.create(name: "Hyatt Zilara Rose Hall" , location: "Jamaica", image: "https://ik.imagekit.io/vonlhgv94ld/hyatt_jamaica__341b3Q1wWD.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644991473856", like: 60)
a5 = Accommodation.create(name: "Jumeirah Vittaveli" , location: "Maldives", image: "https://ik.imagekit.io/vonlhgv94ld/maldives_NbeBeP7zQ.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644991765784", like: 100)
a6 = Accommodation.create(name: "Four Seasons Resort Maldives" , location: "Maldives", image: "https://ik.imagekit.io/vonlhgv94ld/water-villa-with-pool_k_jx-KXP8.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644991899096", like: 150)
a7 = Accommodation.create(name: "Four Seasons Resort Bora Bora" , location: "Bora Bora", image: "https://ik.imagekit.io/vonlhgv94ld/bora_bora_4_seasons_7iEH308km.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644992015734", like: 200)
a8 = Accommodation.create(name: "Jade Mountain Resort" , location: "St. Lucia", image: "https://ik.imagekit.io/vonlhgv94ld/Jade_Mountain_Resort_E25DXFlosoT.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644992191903", like: 190)
a9 = Accommodation.create(name: "Ladera Resort Saint Lucia" , location: "St. Lucia", image: "https://ik.imagekit.io/vonlhgv94ld/Ladera-Resort-Other_BczKskgca.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644992472799", like: 105)
a10 = Accommodation.create(name: "The St. Regis Bora Bora Resort" , location: "Bora Bora", image: "https://ik.imagekit.io/vonlhgv94ld/bobxr-otemanu-villa-5657-hor-clsc_qwIkHaTA-xr.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1644992647721", like: 250)

puts "Creating Reviews"
r1 = Review.create(comment: "Love this place!", accommodation_id: a1.id)
r2 = Review.create(comment: "Beautiful and affordable.", accommodation_id: a2.id)
r3 = Review.create(comment: "Would totally go back!", accommodation_id: a3.id)
r4 = Review.create(comment: "Staff was great and the room was very clean!", accommodation_id: a4.id)
r5 = Review.create(comment: "A bit expensive but totally worth it for an anniversary or honeymoon trip!", accommodation_id: a5.id)
r6 = Review.create(comment: "Love this place!", accommodation_id: a6.id)
r7 = Review.create(comment: "Amazing views!", accommodation_id: a7.id)
r8 = Review.create(comment: "I would definitely reccommend this resort!", accommodation_id: a8.id)
r9 = Review.create(comment: "My husband and I had an amazing time. Staff was super friendly and the food was great!", accommodation_id: a9.id)
r10 = Review.create(comment: "Love this place!", accommodation_id: a10.id)


# Seed your database here

puts "✅ Done seeding!"
