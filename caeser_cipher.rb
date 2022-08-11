#when using the acsii code

def caeser_cipher string, number
  code_array = []
  cipher_text = ''
  a_code_array = 'a'.ord

  string.split('').each  do |letter|
    code_array << if letter =~ /[^a-zA-Z]/
                    letter.bytes.join('').to_i
                  else
                    shifted = letter.downcase.bytes.join('').to_i + number
                    (shifted - a_code_array) % 26 + a_code_array
                    end
                  end
    cipher_text = code_array.pack 'C*'
    cipher_text
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