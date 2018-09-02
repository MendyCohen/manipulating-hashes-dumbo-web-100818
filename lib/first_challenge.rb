require 'pry'
def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #value.delete_if {|x| x == "strawberry"}
  #your code here
# contacts.collect do |names, details|
#   details.collect do |question, answer|
#     if question == :favorite_icecream_flavors
#       :favorite_icecream_flavors.collect do |x|
#         if x == "strawberry"
#           :favorite_icecream_flavors.pop(x)
#   end
#   end
# end
# end

   contacts["Freddy Mercury"].collect do |attribute, value|
     if attribute == :favorite_icecream_flavors
       value.delete_if do |flavor| 
         flavor == "strawberry"
     end
   end
 end
  #remember to return your newly altered contacts hash!
   contacts
end

