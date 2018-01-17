# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class PlantSeeds

  def initialize
  end

  def genres
    [
      {
        name: 'Hard Science Fiction',
        description: ""
      },
      {
        name: "Soft Science Fiction",
        description: ""
      },
      {
        name: "Near Future",
        description: ""
      },
      {
        name: "Space Exploration",
        description: ""
      },
      {
        name: "Virtual Reality",
        description: ""
      },
      {
        name: "Terraforming",
        description: ""
      },
      {
        name: "Colonization",
        description: ""
      },
      {
        name: "Dying Earth",
        description: ""
      }

    ]
  end

  def books
    [
      {
        title: "New York 2140",
        description: "A novel set in a post climate change flooded New York City that explores the lives of its denizens.",
        author: ""
        genres: ["Hard Science Fiction", "Dying Earth", "Near Future"]
      },
      {
        title: "Children of Time",
        description: "Humans terraform a planet and leave behind other earthly species to evolve as the apex sapient",
        author: "Adrian Tchaikovsky",
        genres: ["Hard Science Fiction", "Terraforming", "Space Exploration", "Colonization"]
      },
      {
        title: "Harm",
        description: "The time is today or tomorrow - or perhaps the day after tomorrow. Paul Fadhil Abbas Ali, a young British citizen of Muslim descent, has written a satirical novel in which two characters joke about the assassination of the prime minister. Arrested by agents of HARM - the Hostile Activities Research Ministry - Paul is thrown into a nameless Abu Ghraib-like prison, possibly located in Syria, where he is held incommunicado and brutally interrogated by jailers to whom his
          Muslim heritage is itself a crime meriting the harshest punishment. Under this sadistic regime, Paul's personality begins to show signs of radical fragmentation....
          On the remote planet of Stygia, a man named Fremant, haunted by memories of torture that seem drawn from Paul's mind, is one of a small group of colonists struggling for survival on a harsh but weirdly beautiful world whose dominant life-forms are insects. The sole humanoid race on the planet has been hunted to extinction by the human settlers, whose long journey to Stygia has left them unable to understand their own history and technology.
          Thrown back to a more primitive state, they seem destined to repeat all the sins of the world they fled to Stygia to escape.
          Is Paul dreaming Fremant as a way of escaping the horrors of his imprisonment? Or is there a stronger - and far stranger - connection between the two men, whose very different circumstances begin to take on uncanny parallels?
          As aspects of their identities blur and, finally, merge, astonishing answers take shape - and profound new questions arise."
        author: "Brian W. Aldiss",
        genres: ["Colonization"]
      },
      {
        title: "Children of Time",
        description: "An odyssey of discovery, from a shattered society through the solar system with a handful of men and women who ride a cold, hurtling ball of ice to the shaky promise of a distant, unknowable future.",
        author: "David Brin Gregory Benford",
        genres: ["Colonization", "Space Exploration"]
      }
    ]
  end

  def create_genres
    puts "Starting to create Genres."
    genres.each do |genre|
      Genre.create!(genre)
    end
    puts "Finshed creating Genres!"
  end

  def create_books
    puts "Starting to create Books."
    books.each do |book|
      genres = book[:genres]
      book = Book.create!(book, genres)
    end
    puts "Finshed creating Books!"
  end

  def create_book_genres(book, genres)
    genres.each do |genre|
      BookGenres.create(book: book, genre: Genre.find_by(name: genre)))
    end
  end

end
