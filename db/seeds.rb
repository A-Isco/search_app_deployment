# Clear existing records
Article.destroy_all
Search.destroy_all
User.destroy_all

# Create random articles
300.times do
  Article.create(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph(sentence_count: 15)
  )
end

# Create dummy users with different IP addresses
user_ips = Array.new(10) { Faker::Internet.unique.ip_v4_address }
users = User.create(user_ips.map { |ip| { ip_address: ip } })

# Create search queries for each user
users.each do |user|
  # Generate a random number of searches (between 1 and 10) for each user
  rand(1..10).times do
    # Use different categories for searches (space, science, nature)
    query = case rand(1..3)
            when 1 then Faker::Space.star
            when 2 then Faker::Science.element
            when 3 then Faker::Science.unique.element_symbol
            end

    user.searches.create(query: query)
  end
end