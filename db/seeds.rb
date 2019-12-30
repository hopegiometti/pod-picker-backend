# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'unirest'

# response = Unirest.get "https://listen-api.listennotes.com/api/v2/best_podcasts?genre_id=166&page=2&region=us&safe_mode=1",
#   headers:{
#     "X-ListenAPI-Key" => "63496ebdc2424aca97ac84f8bfba4d74",
#   }

# podcast_array = response["podcasts"]

#   podcast_array.each do |podcast|
#     Podcast.create(
#     title: podcast["title"],
#     image: podcast["image"],
#     website: podcast["website"],
#     language: podcast["language"],
#     thumbnail: podcast["thumbnail"],
#     itunes_id: podcast["itunes_id"],
#     total_episodes: podcast["total_episodes"],
#     description: podcast["description"],
#     explicit_content: podcast["explicit_content"]
#     )
#    end
Podcast.destroy_all 
User.destroy_all
Favorite.destroy_all


views = Podcast.create(title: "Views with David Dobrik and Jason Nash", genre: "Comedy", thumbnail: "https://is3-ssl.mzstatic.com/image/thumb/Podcasts113/v4/91/01/83/910183ef-dec6-3f08-72a7-0403a563d8da/mza_2070081194714925120.jpeg/400x400bb.jpg", website: "https://open.spotify.com/show/1vPkGMyrKXdbYWHxSw9kd1", language: "English", description: "In this weekly podcast, David Dobrik, a 23-year-old, sexy, millionaire YouTuber and Jason Nash, a 40-something single dad with a vlog of his own, take you behind-the-scenes of their vlogs and show you what living the “YouTube life” is really like. Join these two as they confess their most intimate thoughts, discuss pop-culture, and dissect their own contentious relationship. New episodes drop every Thursday!", explicit_content: true)
favorite_murder = Podcast.create(title: "My Favorite Murder", genre:"True Crime", thumbnail: "https://secureimg.stitcher.com/feedimagesplain328/95773.jpg", website: "https://myfavoritemurder.com/", language: "English", description: "My Favorite Murder is the hit true crime comedy podcast hosted by Karen Kilgariff and Georgia Hardstark. Since its inception in early 2016, the show has broken download records and sparked an enthusiastic, interactive “Murderino” fan base who come out in droves for their sold-out worldwide tours.", explicit_content: true)
something = Podcast.create(title: "Someone Knows Something", genre: "True Crime", thumbnail: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Someone_Knows_Something_logo.jpg/220px-Someone_Knows_Something_logo.jpg", website: "https://www.cbc.ca/radio/sks", language: "English", description: "Someone Knows Something is a podcast by Canadian award-winning filmmaker and writer David Ridgen, first released in March 2016. The series is hosted, written and produced by Ridgen and mixed by Cesil Fernandes. The series is also produced by Chris Oke, Steph Kampf and executive producer Arif Noorani.", explicit_content: true)
root_of_evil = Podcast.create(title: "Root of Evil", genre: "True Crime", thumbnail: "https://secureimg.stitcher.com/feedimagesplain328/360695.jpg", website: "https://www.stitcher.com/podcast/turner-podcast-network/root-of-evil-the-true-story-of-the-hodel-family-and-the-black", language: "English",  description: "When Elizabeth Short, also known as The Black Dahlia, was brutally killed in 1947, it gripped the entire country. More than 70 years later, it remains America's most infamous unsolved murder. Many believe Dr. George Hodel was the killer, thanks to an investigation by Hodel's own son. But murder is just part of the Hodel family story, one filled with horrifying secrets that ripple across generations. Now, through never-before-heard archival audio and first-time interviews, the Hodel family opens up to reveal their shocking story. In this eight-part documentary series, sisters Rasha Pecoraro and Yvette Gentile, the great grand daughters of George Hodel, take a deep dive into their family history to try to figure out what really happened, and where do they all go from here? Root of Evil is the companion podcast to TNTs limited series I Am the Night. Inspired by the true story of the Hodel family, the series stars Chris Pine and comes from acclaimed Wonder Woman director Patty Jenkins.", explicit_content: true)
forking = Podcast.create(title: "Gender Forking", genre: "Comedy", thumbnail: "https://secureimg.stitcher.com/feedimagesplain328/347251.jpg", website: "https://www.stitcher.com/podcast/gender-forking-a-life-and-death-podcast", language: "English", description: "Lori and Sam, two grad students/Twilight enthusiasts/best friends read Stephenie Meyer's Twilight Saga through a lens of gender and sexuality, but also as 10-year Twilight fans. Season 1, which covers Life and Death: Twilight Reimagined is now streaming.", explicit_content: true)
office_ladies = Podcast.create(title: "Office Ladies", genre: "Comedy", thumbnail: "https://secureimg.stitcher.com/feedimagesplain328/465094.jpg", website: "https://www.stitcher.com/podcast/earwolf/office-ladies", language: "English", description: "The Office co-stars and best friends, Jenna Fischer and Angela Kinsey, are doing the ultimate The Office re-watch podcast for you. Each week Jenna and Angela will break down an episode of The Office and give exclusive behind the scene stories that only two people who were there, can tell you.", explicit_content: true)
serial = Podcast.create(title: "Serial", genre: "True Crime", thumbnail: "https://secureimg.stitcher.com/feedimagesplain328/54050.jpg", website: "https://serialpodcast.org/", language: "English", description: "Serial is a podcast from the creators of This American Life, hosted by Sarah Koenig. Serial unfolds one story - a true story - over the course of a whole season. The show follows the plot and characters wherever they lead, through many surprising twists and turns. Sarah won't know what happens at the end of the story until she gets there, not long before you get there with her. Each week she'll bring you the latest chapter, so it's important to listen in, starting with Episode 1. New episodes are released on Thursday mornings.", explicit_content: true)

lily = User.create(username: "lily")
hope = User.create(username: "hope")

Favorite.create(user: lily, podcast: favorite_murder)
Favorite.create(user: lily, podcast: root_of_evil)
Favorite.create(user: lily, podcast: office_ladies)
Favorite.create(user: hope, podcast: views)
Favorite.create(user: hope, podcast: forking)
Favorite.create(user: hope, podcast: serial)
Favorite.create(user: lily, podcast: something)