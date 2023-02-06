# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

### USER
User.create!(name: "ben", email: "ben@email.com", password:"password" ,image_url: "https://img.freepik.com/free-vector/cute-happy-penguin-cartoon-icon-illustration-animal-nature-icon-concept-isolated-flat-cartoon-style_138676-2095.jpg?w=2000&t=st=1675707900~exp=1675708500~hmac=15726cd44b90ba3b33b333e710620c3b753237de3d0138d2054e8a4c704a072d")
User.create!(name: "tom", email: "tom@email.com", password:"password" ,image_url: "https://img.freepik.com/free-vector/cute-sloth-yoga-cartoon-icon-illustration_138676-2250.jpg?w=2000&t=st=1675707914~exp=1675708514~hmac=b3857692bac794e58b2e0d142babdeec6d141dd66a1635f0eeb87c08fad1396a")
User.create!(name: "amy", email: "amy@email.com", password:"password" ,image_url: "https://img.freepik.com/free-vector/cute-cat-hug-fish-cartoon-vector-icon-illustration-animal-food-icon-concept-isolated-premium-vector_138676-5915.jpg?w=2000&t=st=1675707915~exp=1675708515~hmac=2926fc454583d821582b79c265e78c5de660291eb6d206a0bbc209a8a565869a")
User.create!(name: "ann", email: "ann@email.com", password:"password" ,image_url: "https://img.freepik.com/free-vector/cute-blue-tyrannosaurus-rex_138676-2073.jpg?w=2000&t=st=1675707916~exp=1675708516~hmac=0e90d7f39b6854f1874135911941a047e766d83985aa27682405e211cb3a74ef")

### TRIP
Trip.create!(user_id: "1", title: "Chicago Trip", image_url: "https://cdn.choosechicago.com/uploads/2019/06/general-contact.jpg", start_time: "2023-02-05", end_time: "2023-02-07" )
Trip.create!(user_id: "1", title: "SF Trip", image_url: "hhttps://s.hdnux.com/photos/01/30/45/23/23221451/10/1200x0.jpg", start_time: "2023-02-08", end_time: "2023-02-09" )
Trip.create!(user_id: "2", title: "New York Trip", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVALvxP30ycdpAP8SvKfP9DbOr0BOJzAd1XQ&usqp=CAU", start_time: "2023-03-05", end_time: "2023-03-07" )
Trip.create!(user_id: "3", title: "S.Korea Trip", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkfvtO-ElmTKjPFxscOP2AkxeiC0IGez57g&usqp=CAU", start_time: "2023-03-05", end_time: "2023-03-07" )
Trip.create!(user_id: "4", title: "UK Trip", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpxvlspuech5l--kdo94PTrGTyDC4iIu1LHg&usqp=CAU", start_time: "2023-04-13", end_time: "2023-04-15" )
Trip.create!(user_id: "3", title: "Japan Trip", image_url: "https://media.timeout.com/images/105240237/image.jpg", start_time: "2023-06-13", end_time: "2023-06-14" )

###PLACE
Place.create!(trip_id: "1", address: "201 E Randolph St, Chicago, IL 60602", name: "cloud gate", description: "Cloud Gate is a public sculpture by Indian-born British artist Anish Kapoor, that is the centerpiece of AT&T Plaza at Millennium Park in the Loop community area of Chicago, Illinois.", image_url: "https://mymodernmet.com/wp/wp-content/uploads/2021/07/cloud-gate-infographic-01.jpg", start_time: "2023-02-05", end_time: "2023-02-05")
Place.create!(trip_id: "1", address: "806 Michigan Ave, Chicago, IL 60611", name: "Water Tower", description: "The Chicago Water Tower is a contributing property and landmark in the Old Chicago Water Tower District in Chicago, Illinois, United States, that is listed on the National Register of Historic Places.", image_url: "https://cdn.britannica.com/44/93844-050-F5931FD7/Water-Tower-one-buildings-Great-Fire-North-1871.jpg", start_time: "2023-02-06", end_time: "2023-02-06")
Place.create!(trip_id: "1", address: "1300 S Dusable Lk Shr Dr, Chicago, IL 60605", name: "Adler Planetarium", description: "CThe Adler Planetarium is a public museum in Chicago, Illinois, dedicated to astronomy and astrophysics.", image_url: "https://www.fddb.org/wp-content/uploads/img_news_fulldome_job_opportunity_theater_technician_adler_planetarium_4c257aca95.jpg", start_time: "2023-02-07", end_time: "2023-02-07")

Place.create!(trip_id: "2", address: "Golden Gate Bridge, San Francisco, CA", name: "Golden gate", description: "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.", image_url: "https://api.time.com/wp-content/uploads/2015/01/483781925.jpg?quality=85&w=3750", start_time: "2023-02-08", end_time: "2023-02-08")

Place.create!(trip_id: "2", address: "1070 Lombard Street, San Francisco, California 94109", name: "Lombard Street", description: "Lombard Street in San Francisco is often called the most crooked street in the world.", image_url: "http://cdn.cnn.com/cnnnext/dam/assets/190419112536-lombard-street-san-francisco.jpg", start_time: "2023-02-09", end_time: "2023-02-09")

Place.create!(trip_id: "3", address: "Manhattan, NY 10036", name: "times square", description: "Bustling destination in the heart of the Theater District known for bright lights, shopping & shows.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/1920px-New_york_times_square-terabass.jpg", start_time: "2023-05-05", end_time: "2023-05-05")

Place.create!(trip_id: "3", address: "Central Park, New York, NY", name: "central park", description: "Sprawling park with pedestrian paths & ballfields, plus a zoo, carousel, boat rentals & a reservoir.", image_url: "https://www.travelandleisure.com/thmb/4zZ6EVjvofXuLnCzV-vEXcglR2Q=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/central-park-new-york-city-WHEREYOU0118-fb2c3b1bf36d40258ec2788145fa5581.jpg", start_time: "2023-05-06", end_time: "2023-05-06")

Place.create!(trip_id: "3", address: "Statue of Liberty, New York, NY 10004", name: "Statue of Liberty", description: "Iconic National Monument opened in 1886, offering guided tours & a museum, plus harbor & city views.", image_url: "https://www.travelandleisure.com/thmb/Pl_anNdH1lJn4mIKhekEZUlxago=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/liberty-539667859-7e5156e7fbe7429da60ce912d7aa54f4.jpg", start_time: "2023-05-07", end_time: "2023-05-07")

Place.create!(trip_id: "4", address: "161 Sajik-ro, Jongno-gu, Seoul, South Korea", name: "Gyeongbokgung Palace", description: "Gyeongbokgung, also known as Gyeongbokgung Palace or Gyeongbok Palace, was the main royal palace of the Joseon dynasty. Built in 1395, it is located in northern Seoul, South Korea.", image_url: "https://www.theseoulguide.com/wp-content/uploads/2020/07/gyeongbokgung_palace_seoul_korea.jpg", start_time: "2023-03-05", end_time: "2023-03-05")

Place.create!(trip_id: "4", address: "Namsan Tower, Namsangongwon-gil, Yongsan-gu, Seoul, South Korea", name: "N Seoul Tower", description: "COpened in 1980, this iconic tower offers panoramic views of the city & a revolving restaurant.", image_url: "https://www.kkday.com/en/blog/wp-content/uploads/kr_shutterstock_629824091-1170x680.jpg", start_time: "2023-03-06", end_time: "2023-03-06")

Place.create!(trip_id: "4", address: "281 Eulji-ro, Euljiro 7(chil)-ga, Jung-gu, Seoul, South Korea", name: "DDP", description: "CArchitectural-landmark events venue with futuristic design, a design market & food vendors.", image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/97/99/04/photo0jpg.jpg?w=1200&h=-1&s=1", start_time: "2023-03-07", end_time: "2023-03-07")

Place.create!(trip_id: "5", address: "London SW1A 0AA, United Kingdom", name: "Big Ben", description: "16-storey Gothic clocktower and national symbol at the Eastern end of the Houses of Parliament.", image_url: "https://resources.thomascook.in/images/holidays/sightSeeing/8-big-ben-min.jpg", start_time: "2023-04-13", end_time: "2023-04-13")

Place.create!(trip_id: "5", address: "London SW1A 1AA, United Kingdom", name: "Buckingham Palace", description: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom.", image_url: "https://a.cdn-hotels.com/gdcs/production107/d1500/bffd5ae3-a81d-4246-b4d9-583418ed33de.jpg?impolicy=fcrop&w=800&h=533&q=medium", start_time: "2023-04-14", end_time: "2023-04-13")

Place.create!(trip_id: "5", address: "Riverside Building, County Hall, London SE1 7PB, United Kingdom", name: "London Eye", description: "Huge observation wheel giving passengers a privileged bird's-eye view of the city's landmarks.", image_url: "https://www.guidelondon.org.uk/wp-content/uploads/2016/04/South-Bank_View-of-the-London-Eye-and-histori-County-Hall-building-e1493402459815.jpg", start_time: "2023-04-15", end_time: "2023-04-15")

Place.create!(trip_id: "6", address: "4 Chome-2-8 Shibakoen, Minato City, Tokyo 105-0011, Japan", name: "Tokyo Tower", description: "Reminiscent of the Eiffel Tower, this landmark features observation areas & other attractions.", image_url: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/01/tokyo-tower-blossoms.jpg", start_time: "2023-06-13", end_time: "2023-06-13")
Place.create!(trip_id: "6", address: "Kitayama, Fujinomiya, Shizuoka 418-0112, Japan", name: "Fuji Mountain", description: "Iconic snow-capped peak & volcano, the highest in Japan & the 7th highest island peak on earth.", image_url: "https://www.planetware.com/photos-large/JPN/japan-mt-fuji-and-cherry-blossoms.jpg", start_time: "2023-06-14", end_time: "2023-06-14")