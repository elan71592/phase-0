# Pseudocode
# Step 1: create method that takes array of names
# Step 2: create an index that will be used as a counter for a loop until it reaches the count of the array of names being passed in
# Step 3: create copy of array being passed in to delete elements from.
# Step 4: create group number counter
# step 5: loop through each name and add to a group but limit the group to 5 people unless there is not enough people at the end to make another group of at least 3. In that case, just add an extra person to the last group.

# Initial Solution:
# def acct_groups(names)
#   acct_groups = {}
#   names_list = Array.new(names)
#   int = 1
#   idx = 0

#   while idx != names.count
#     if acct_groups.empty?
#       acct_groups["Group " + int.to_s] = [names_list.sample]
#       names_list.delete(acct_groups["Group " + int.to_s][-1])
#     elsif acct_groups["Group " + int.to_s].count < 5
#       acct_groups["Group " + int.to_s] << names_list.sample
#       names_list.delete(acct_groups["Group " + int.to_s][-1])
#     else
#       if names_list.count == 2
#         if acct_groups["Group " + int.to_s].count == 5
#           acct_groups["Group " + int.to_s] << names_list.sample
#           names_list.delete(acct_groups["Group " + int.to_s][-1])
#           acct_groups["Group " + (int - 1).to_s] << names_list.sample
#           names_list.delete(acct_groups["Group " + (int - 1).to_s][-1])
#           break
#         end
#       elsif names_list.count == 1
#         if acct_groups["Group " + int.to_s].count == 5
#           acct_groups["Group " + int.to_s] << names_list.sample
#           names_list.delete(acct_groups["Group " + int.to_s][-1])
#         end
#         break
#       else
#         int += 1
#         acct_groups["Group " + int.to_s] = [names_list.sample]
#         names_list.delete(acct_groups["Group " + int.to_s][-1])
#       end
#     end
#     idx += 1
#   end

#   acct_groups.each do |group, people|
#       puts "#{group}: #{people}"
#     end
# end

#
#
#

# Refactored Solution:
def acct_groups(names)
  groups = []
  names.shuffle.each_slice(4) { |group| groups << group }
  idx = 1
  if groups[-1].count < 3
    groups[-1].each do |person|
      groups[-2] << person
    end
    groups.pop
  end
  groups.each do |group|
    puts
    puts "Group #{idx}: "
    group.each do |person|
      puts person
    end
    idx += 1
  end
end

names = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Chris Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "David Tao", "David Walden", "Bill Deng", "Denny Jovic", "Daniel Deutsch", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko","Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabo", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley", "Robin Soubry", "James Robinson", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

acct_groups(names)

# What was the most interesting and most difficult part of this challenge?

  # - The most interesting part was refactoring. The most difficult part was when I set my names_list variable = names. As my until loop was passing it would cut off at half the names and I overlooked that part. Took me some time but I got it. All I had to do was clone it so I did Array.new(names).shuffle and from there on, it was smooth sailing.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

  # - I still don't have much patience for pseudocode but I am learning and I am getting better at breaking the problem down.

# Was your approach for automating this task a good solution? What could have made it even better?

  # - I am not satisfied with my solution. It is a working solution that satisfies the task at hand but I am sure there is a much better way to do it and I haven't thought of it.

# What data structure did you decide to store the accountability groups in and why?

  # - I used a hash and an array. The hash was so I can set each group number corresponding to the array which contains each person for that group. I felt that having a hash would logically make more sense. If you have groups then why not put them in a data structure that works in key value pairs. The group numbers are the keys, the people in each group are the values. Just seemed logical to me but I could be very wrong.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

  # - I did not learn any new Ruby methods while refactoring but I learned to look at my code more carefully. There were things there I didn't need in my initial solution which took up so much extra space and methods like shuffle and pop that came to me during refactoring which I guess is a good thing.