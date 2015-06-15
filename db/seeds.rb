# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Vote.destroy_all
Kid.destroy_all
Scoop.destroy_all
Kid.create([
{first_name: "Justin", last_name: "Jacot", email: "justinowenjacot@icloud.com", password: "justinjacot", password_confirmation: "justinjacot", parent_id: nil },
{first_name: "Kiki", last_name: "Roeder", email: "kiki@roeder.com", password: "kikiroeder", password_confirmation: "kikiroeder", parent_id: nil },
{first_name: "Bruce", last_name: "Kellerman", email: "bruce@kellerman.com", password: "brucekellerman", password_confirmation: "brucekellerman", parent_id: nil },
{first_name: "Chris", last_name: "Kemeza", email: "chris@Kemeza.com", password: "chriskemeza", password_confirmation: "chriskemeza", parent_id: nil },
{first_name: "Kevin", last_name: "Hobbs", email: "kevin@hobbs.com", password: "kevinhobbs", password_confirmation: "kevinhobbs", parent_id: nil },
{first_name: "Tikvah", last_name: "Harrison", email: "tikvah@harrison.com", password: "tikvahharrison", password_confirmation: "tikvahharrison", parent_id: nil },
{first_name: "Peter", last_name: "Ward", email: "peter@ward.com", password: "peterward", password_confirmation: "peterward", parent_id: nil },
{first_name: "Matt", last_name: "Valdez", email: "matt@valdez.com", password: "mattvaldez", password_confirmation: "mattvaldez", parent_id: nil },
{first_name: "Colin", last_name: "Taylor", email: "colin@taylor.com", password: "colintaylor", password_confirmation: "colintaylor", parent_id: nil },
{first_name: "Marc", last_name: "Wright", email: "marc@wright.com", password: "marcwright", password_confirmation: "marcwright", parent_id: nil },
{first_name: "Mike", last_name: "Hopper", email: "mike@hopper.com", password: "mikehopper", password_confirmation: "mikehopper", parent_id: nil },
{first_name: "Mendel", last_name: "Yaffe", email: "mendel@yaffe.com", password: "mendelyaffe", password_confirmation: "mendelyaffe", parent_id: nil },
{first_name: "Nassar", last_name: "Raheem", email: "nassar@raheem.com", password: "nassarraheem", password_confirmation: "nassarraheem", parent_id: nil },
{first_name: "Duc", last_name: "Tran", email: "duc@tran.com", password: "ductrand", password_confirmation: "ductrand", parent_id: nil },
{first_name: "Avant", last_name: "Baker", email: "avant@baker.com", password: "avantbaker", password_confirmation: "avantbaker", parent_id: nil },
])
Scoop.create([
{headline: "OMG Bathroom!", story: "I have to go sooooo bad and they won't let me till after practice.  I feel like if I have to hold it any longer I will just die!", kid_id: 9, color: 'grey'}
{headline: "I like turtles", story: "If I had a dollar for every turtle I liked I would have more dollars than friends", kid_id: 12, color: 'grey'}
{headline: "Banana", story: "What did the banana say to the pilgrim the night before thanksgiving?  If I don't split, I'm gonna go the way of the pumpkin tomorrow I fear!", kid_id: 4, color: 'grey'}
{headline: "Clementine", story: "Oh my darlng, Oh my darling, oh my darling Clementine, I was lost and lonesome without you, Oh my darling Clementine", kid_id: 5, color: 'grey'}
{headline: "The Cat and the Fiddle", story: "Hey diddle diddle, the cat and the fiddle, the cow jumped over the moon.  The little dog laughed to see such sport and the dish ran away with the spoon.  True story.", kid_id: 3, color: 'grey'}
{headline: "Marathon", story: "I ran my first Marathon today.  It took me only 10 minutes!", kid_id: 6, color: 'grey'}
{headline: "Space Camp", story: "Going to space camp next month and I CANNOT WAIT.  IT IS GOING TO BE AWESOME!", kid_id: 7, color: 'grey'}
{headline: "Young Chef", story: "I made Oxtail Poutine with dark choclolate shavings tonight for my mom and dad for their anniversary.", kid_id: 1, color: 'grey'}
{headline: "Later gator", story: "Later gators!", kid_id: 2, color: 'grey'}
{headline: "Movies", story: "Anybody want to go see Alexander and the terrible horrible no good very bad day with me?", kid_id: 8, color: 'grey'}
{headline: "Favorite book", story: "Okay so everyone has to write the headline favorite book and follow it with the title of their favorite book okay?  Mine is Harold and the purple crayon.", kid_id: 10, color: 'grey'}
{headline: "Favorite Book", story: "Mine is Hamster Huey and the Gooey Kablooie", kid_id: 11, color: 'grey'}
{headline: "Same", story: "I also like Hamster Huey!  That's the best book I ever read yeah haha it really makes me laugh every time I even think about it.", kid_id: 3, color: 'grey'}
{headline: "Hamster Huey", story: "How can anyone's favorite book be about hamsters?", kid_id: 13, color: 'grey'}
{headline: "Disneyland", story: "When I grow up I want to work at Disneyland so that everyday I go to work will be the best day of my life, because I will work with talking animals.", kid_id: 2, color: 'grey'}
])


