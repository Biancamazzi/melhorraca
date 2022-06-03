# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Quiz.all.destroy_all
  Question.all.destroy_all
  Quiz.create(user_id: User.first.id, description: "Quiz 1",)
  # Create - Questions
  Question.create(
  quiz_id: Quiz.first.id, description: "Voce pode tosar e/ou escovar o seu cachorro com que frequencia?", photourl: "https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80")
  # true == >= 5 (grooming_frequency_value)
  Question.create(
  quiz_id: Quiz.first.id, description: "Troca de pelo frequente de incomoda?", photourl: "https://i.postimg.cc/XqTLmpC5/golden.jpg")
  # true == <= 4 (shedding_value)
  Question.create(
   quiz_id: Quiz.first.id, description: "Voce tem tempo disponivel para brincar e passear com seu novo amigo?", photourl: "https://images.unsplash.com/photo-1525253086316-d0c936c814f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80" )
  # true == >= 5 (energy_level_value)
  Question.create(
  quiz_id: Quiz.first.id, description: "Facilidade para treinamento é algo muito relevante pra voce?", photourl: "https://images.unsplash.com/photo-1508109742312-c7d531211d11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80")
  # true == >= (trainability_value)
  Question.create(
  quiz_id: Quiz.first.id,  description: "É muito importante pra voce que o cachorro se adapte bem com outros cachorros e pessoas fora do circulo familar?"), photourl: "https://images.pexels.com/photos/10289623/pexels-photo-10289623.jpeg?cs=srgb&dl=pexels-amar-preciado-10289623.jpg&fm=jpg"
  # true == >= 5 (demeanor_value)
  Question.create(
  quiz_id: Quiz.first.id,  description: "Voce gostaria de ter uma raca de pequena?", photourl:"https://i.postimg.cc/TP3RpwKg/jack.jpg" )
  # true == size == pequeno)
  Question.create(
  quiz_id: Quiz.first.id,  description: "Voce gostaria de ter uma raca media?", photourl:"https://i.postimg.cc/HWyTJFkZ/lagotto-andre.jpg" )
  # true == size == medio
  Question.create(
  quiz_id: Quiz.first.id,  description: "Voce gostaria de ter uma raca grande?", photourl:"https://i.postimg.cc/P52HsjSx/raca-grande.jpg" )
  # true == size == grande

