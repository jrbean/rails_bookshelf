# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names = ['james', 'andrew', 'devin', 'justin', 'sophia', 'jamaal']

names.each do |name|
  User.create! email: "#{name}@example.com", password: "hunter2", name: name
end

books = [{
  title: "Lost Tribe of the Sith: The Collected Stories",
  author: "John Jackson Miller"},
	{
  title: "The Old Republic: Revan",
  author: "Drew Karpyshyn"},
	{
  title: "The Old Republic: Deceived",
  author: "Paul S. Kemp"},
  {
	title: "Red Harvest",
  author: "Joe Schreiber"},
  {
	title: "The Old Republic: Fatal Alliance",
  author: "Sean Williams"},
	{
  title: "The Old Republic: Annihilation",
  author: "Drew Karpyshyn"},
  {
	title: "Knight Errant",
  author: "John Jackson Miller"},
	{
  title: "Darth Bane: Path of Destruction",
  author: "Drew Karpyshyn"},
  {
	title: "Darth Bane: Rule of Two",
  author: "Drew Karpyshyn"},
  {
  title: "Darth Bane: Dynasty of Evil",
  author: "Drew Karpyshyn"}]

books.each do |book|
  b = Book.create! title: book[:title], author: book[:author], currently_out: false
end
