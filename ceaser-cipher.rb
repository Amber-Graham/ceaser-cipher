#when using the acsii code

def caeser_cipher (string, number)
  acsii_string = string.downcase.bytes
    encryption = acsii_string.collect! do |letter|
      if (123...200).include?(letter + number)
        letter = (letter - 26) + number
        else
          letter = letter + number
        end
      end
    encryption = encryption.pack('c*')
    encryption = encryption.gsub("(", " ")
end

caeser_cipher("cats are cool", 8)


#when using shift and the alphabet

ALPHABET = ('a'..'z').to_a.freeze #i learned that freeze will ensure that i don't intentionally mess up my variable
ALPHABET_SIZE = ALPHABET.size

def caesar_cipher(string, shift)
  chars = string.downcase.split('')
  chars_string = ''
  chars.each do |char|
    chars_string << if ALPHABET.include? char
                    i = ALPHABET.index(char)
                    shifted = (i + shift) % ALPHABET_SIZE
      
                    ALPHABET[shifted]
                  else
                    char
                  end
                end
  chars_string
end

caesar_cipher("dogs are better than cats", 5)