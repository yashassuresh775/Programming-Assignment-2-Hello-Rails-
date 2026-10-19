# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: "My Neighbor Totoro", rating: "G",
    release_date: "16-Apr-1988" },
  { title: "Green Book", rating: "PG-13",
    release_date: "16-Nov-2018" },
  { title: "Parasite", rating: "R",
    release_date: "30-May-2019" },
  { title: "Nomadland", rating: "R",
    release_date: "19-Feb-2021" },
  { title: "CODA", rating: "PG-13",
    release_date: "13-Aug-2021" },
  # Additional movies (Part 5)
  { title: "Spirited Away", rating: "PG",
    release_date: "20-Jul-2001",
    description: "A young girl enters a world of spirits." },
  { title: "The Grand Budapest Hotel", rating: "R",
    release_date: "28-Mar-2014",
    description: "A legendary concierge and his lobby boy." },
  { title: "Everything Everywhere All at Once", rating: "R",
    release_date: "25-Mar-2022",
    description: "An aging Chinese immigrant is swept up in an insane adventure." }
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
    m.description = movie[:description] if movie[:description]
  end
end
