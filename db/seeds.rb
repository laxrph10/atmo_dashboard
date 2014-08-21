# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


      Brand.create(brand_name: 'Coke', website: "http://www.coke.com", phone: '1234567897', email: 'johndoe@coke.com', address: '123 Coke Avenue, New York, NY 11216', description: 'Coke was founded in 1947....', company_name: 'Coca-Cola', company_representative_name: 'John Doe', avatar_img: 'http://www.coca-cola.com/template1/global/images/coke_disc.png', header_img: 'http://ninerfans.com/wp-content/uploads/2014/06/02.jpg' , auth_token:'true', secret_code: '12345', user_name: 'coke_user')
      Brand.create(brand_name: 'Jeep', website: "http://www.jeep.com", phone: '9994567897', email: 'bettycrocker@jeep.com', address: '7777 Jeep Street, Detroit, MI 48167', description: 'Jeep was first used in WWI.....', company_name: 'Chrysler Group LLC', company_representative_name: 'Betty Crocker', avatar_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsUG5sRikqEWqpN4vanPlC-rSEsdf8jRRPgyg2CVFbeg7h7qds7heO179h', header_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx-2PIsvAkiF1LuO6d0quJPnivs_mk6tXICXgvbeejgDYjie4dOIkFj1d7' , auth_token:'true', secret_code: '12346', user_name: 'jeep_user')
      Brand.create(brand_name: 'Oreo', website: "http://www.oreo.com", phone: '8894967997', email: 'parkerward@oreo.com', address: '987 Oreo Place, Brooklyn, NY 11217', description: 'Orea tastes great...', company_name: 'Nabisko', company_representative_name: 'Parker Ward', avatar_img: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Vector_Oreo.svg/1024px-Vector_Oreo.svg.png', header_img: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQuMBcJ-kb9gmxpLbv0aSy2jvvsSb1fiaw4bkJkTiCaCIUZzWDeJQ' , auth_token:'true', secret_code: '12347', user_name: 'oreo_user')
      
      Twittuser.create(brand_id: 1, twitter_username: '@coke')
      Twittuser.create(brand_id: 2, twitter_username: '@jeep')
      Twittuser.create(brand_id: 3, twitter_username: '@oreo')
      Twittuser.create(brand_id: 4, twitter_username: '@Tester1')
      Twittuser.create(brand_id: 5, twitter_username: '@Tester2')

      Instauser.create(brand_id: 1, instagram_username:'@insta_coke')
      Instauser.create(brand_id: 2, instagram_username: '@insta_jeep')
      Instauser.create(brand_id: 3, instagram_username: '@insta_oreo')
      Instauser.create(brand_id: 4, instagram_username: '@insta_test1')
      Instauser.create(brand_id: 5, instagram_username: '@insta_test2')

      Pinuser.create(brand_id: 1, pinterest_username:'@pin_coke')
      Pinuser.create(brand_id: 2, pinterest_username:'@pin_jeep')
      Pinuser.create(brand_id: 3, pinterest_username:'@pin_oreo')
      Pinuser.create(brand_id: 4, pinterest_username:'@pin_test1')
      Pinuser.create(brand_id: 5, pinterest_username:'@pin_test2')
      
      Soundclouduser.create(brand_id: 1, soundcloud_username:'@SC_coke')
      Soundclouduser.create(brand_id: 2, soundcloud_username:'@SC_jeep')
      Soundclouduser.create(brand_id: 3, soundcloud_username:'@SC_oreo')
      Soundclouduser.create(brand_id: 4, soundcloud_username:'@SC_test1')
      Soundclouduser.create(brand_id: 5, soundcloud_username:'@SC_test2')

      Vimeouser.create(brand_id: 1, vimeo_username:'@Vim_coke')
      Vimeouser.create(brand_id: 2, vimeo_username:'@Vim_jeep')
      Vimeouser.create(brand_id: 3, vimeo_username:'@Vim_oreo')
      Vimeouser.create(brand_id: 4, vimeo_username:'@Vim_test1')
      Vimeouser.create(brand_id: 5, vimeo_username:'@Vim_test2')