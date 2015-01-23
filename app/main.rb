require 'sqlite3'
require_relative '../app/models/politician'
require_relative '../app/models/senator'
require_relative '../app/models/representative'

#

# #____________________QUESTION 1______________________

# puts "Which state are you searching for?"
# state = gets.chomp.upcase

# puts "Senators: "
# Senator.where('state = ?', state).order('lastname').each do |p|
#   puts "#{p.title} #{p.firstname} #{p.lastname} \(#{p.party}\)"
# end

# puts "Representatives: "
# Representative.where('state = ?', state).order('lastname').each do |p|
#  puts "#{p.title} #{p.firstname} #{p.lastname} \(#{p.party}\)"
# end

#____________________QUESTION 2______________________

# puts "Enter the gender (m or f)"
# gender = gets.chomp.upcase

# gen_senator = Senator.where('gender = ? AND in_office = ?', gender, "1")
# gen_rep = Representative.where('gender = ? AND in_office = ?', gender, "1")

# case gender
#   when 'M'

#   puts "Male Senators: #{gen_senator.count} \(#{gen_senator.count*100/ Senator.where('in_office = ?',"1").count}\)%"
#   puts "Male representatives: #{gen_rep.count} \(#{gen_rep.count*100/ Representative.where('in_office = ?',"1").count}\)%"
#   when 'F'
#   puts "Female Senators: #{gen_senator.count} \(#{gen_senator.count*100/ Senator.where('in_office = ?',"1").count}\)%"
#   puts "Female representatives: #{gen_rep.count} \(#{ ( gen_rep.count*100.0/ Representative.where('in_office = ?',"1").count).round}%\)"
#   else
#     puts "Invalid choice!"
# end


#____________________QUESTION 3______________________


# politician = Politician.where('in_office = ?', "1")


# distinct_state = politician.select(:state).distinct

# poli_array = []
# total = 0
# distinct_state.each do |p|
#   last_total = total
#   senator = politician.where("title = ? AND state = ?", "Sen", p.state)
#   rep = politician.where("title = ? AND state = ?", "Rep", p.state)
#   poli_array << [p.state, rep.count + senator.count]
# end

# new_array = poli_array.sort { |x, y| y[1] <=> x[1]}

# new_array.each do |p|
#   senator = politician.where("title = ? AND state = ?", "Sen", p[0])
#   rep = politician.where("title = ? AND state = ?", "Rep", p[0])
#   puts "#{p[0]}: #{senator.count} Senator\(s\), #{rep.count} Representative\(s\)"
# end



#____________________QUESTION 4______________________



# puts "Senators: #{Senator.all.count}"
# puts "Representatives: #{Representative.all.count}"


# #____________________QUESTION 5______________________

# politician = Politician.where('in_office = ?', 0)
# p "Before: #{politician.count}"
# politician.delete_all

# p "After: #{politician.count}"


