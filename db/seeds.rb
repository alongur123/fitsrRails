User.destroy_all()

5.times do 
    # len   = ActiveSupport::MessageEncryptor.key_len;
    # salt  = '12341234123412341234123412341234';
    # key   = ActiveSupport::KeyGenerator.new('password').generate_key(salt, 32);    
    # crypt = ActiveSupport::MessageEncryptor.new(key);      
    User.create({
        first_name: Faker::Artist.name,
        last_name: Faker::Artist.name,
        email: 'guralon2804@gmail.com', 
        # crypt.encrypt_and_sign('123456'),
        password: '123456'
        token: 'salt'
    })
end