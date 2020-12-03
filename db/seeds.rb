5.times do 
    User.create({
        first_name: Faker::Artist.name,
        last_name: Faker::Artist.name,
        email: 'guralon2804@gmail.com'
    })
end