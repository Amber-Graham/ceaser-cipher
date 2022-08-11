#create a code that will create a ceaser cipher when a string is inputted.
#make sure only string can be input
    #if a number or symbol is inputted, raise an error that puts "please only enter letters"
#the alphabet needs to be loop, so that when we get to z its loops back to a 

#a string and integer calls the ceaser cipher
#the string is split into characters (maybe, this might not work for multiple words)
#keep the string in downcase always
#use ACSII code? 
#each characters is moved forward by the number called
#if a letter gets to z and still needs to move forward, it will loop back to the beginning of the alphabet
#if anything other than a letter is entered, throws an error that puts "Please only enter a word. Do not use symbols or numbers."

#usefull methods I think would be beneficial for me:
    #"abc".bytes #=> [97, 98, 99]
    #[97, 98, 99].pack('c*)  #=> "abc"
require 'pry-byebug'; binding.pry

def ceaser_cipher (string, number)
    acsii_string = string.downcase.bytes
    acsii_string.map! {|x| x + number}
    acsii_string.pack('c*')
end

ceaser_cipher("cat", 3)