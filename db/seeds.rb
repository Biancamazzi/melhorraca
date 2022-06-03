# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Quiz.all.destroy_all
  Question.all.destroy_all
  Quiz.create(user_id: User.first.id, description: "Quiz 1")
  # Create - Questions
  Question.create(
  quiz_id: Quiz.first.id, description: "Voce pode tosar e/ou escovar o seu cachorro com que frequencia?")
  # true == >= 5 (grooming_frequency_value)
  Question.create(
  quiz_id: Quiz.first.id, description: "Troca de pelo frequente de incomoda? ")
  # true == <= 4 (shedding_value)
  Question.create(
   quiz_id: Quiz.first.id, description: "Voce tem tempo disponivel para brincar e passear com seu novo amigo?")
  # true == >= 5 (energy_level_value)
  Question.create(
  quiz_id: Quiz.first.id, description: "Facilidade para treinamento é algo muito relevante pra voce?")
  # true == >= (trainability_value)
  Question.create(
  quiz_id: Quiz.first.id,  description: "É muito importante pra voce que o cachorro se adapte bem com outros cachorros e pessoas fora do circulo familar?")
  # true == >= 5 (demeanor_value)


