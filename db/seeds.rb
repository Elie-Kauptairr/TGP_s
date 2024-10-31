# Crée une ville
city = City.find_or_create_by!(name: "Paris")

# Crée un utilisateur en l'associant à la ville
user = User.find_or_create_by!(first_name: "John", last_name: "Doe", description: "Description here", email: "john@example.com", age: 30, city: city)

# Crée un potin avec cet utilisateur comme auteur
gossip = TheGossipProject.create!(title: "Titre du potin", content: "Contenu du potin", user: user)
