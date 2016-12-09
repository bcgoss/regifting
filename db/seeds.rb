# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Dan Olson', email: 'dan@example.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Lucy Conklin', email: 'lucy@example.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Alex Fosco', email: 'alex@example.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Jenny Soden', email: 'jenny@example.com', password: 'password', password_confirmation: 'password')
goss = User.create(name: 'Bryan Goss', email: 'bryan@example.com', password: 'password', password_confirmation: 'password')
Gift.create(name: 'VCR', description: 'Plays ancient media', image_url: 'http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/vcrhed_1.jpg', user_id: goss)
Gift.create(name: 'Tamaguchi', description: 'It is a bitch to take care of', image_url: 'http://961theeagle.com/files/2013/02/tamagotchi-630x472.jpg', user_id: goss)
Gift.create(name: 'Pager', description: 'Spits out number that tell you who to call', image_url: 'http://3.bp.blogspot.com/_j8AAWt2lEDk/SeNklUX0MhI/AAAAAAAABo0/2Smo3MBqd1Q/s400/motorola%2Bpager.png', user_id: goss)
Gift.create(name: 'Windows 95', description: 'Awesome OS', image_url: 'http://www.oldsoftware.com/softimg6/95floppy.jpg', user_id: goss)
