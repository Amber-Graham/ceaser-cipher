# ceaser-cipher
Caeser Cipher built using Ruby

My first project writing with Ruby for TOP.
I will update after the project with my final thoughts.

**Final thoughts:**

There are *so* many ways to go about this.
My initial thought was to utilize the 
ASCII code to assign values to numbers.

Once I was able to get the code working 
for the ASCII code, I decided to use shift 
and the alphabet. I set up the alphabet as a 
global variable. I had some trouble getting 
it to work, but after quite a bit of 
debugging, it's all working.

After both sets were working, I started 
looking up ways to refine and make the code 
look better. This is where I came across
the most beautiful solution. 

Without further ado, here it is: 

***************************************
CHARS = [*?A..?Z], [*?a..?z]

def caesar_cipher string, shift
  string.tr CHARS.join, CHARS.map{ |ary| 
  ary.rotate shift }.join
end

puts caesar_cipher 'What a string!', 5
# => Bmfy f xywnsl!
***************************************

BEAUTIFUL!!! Took me quite some time to 
figure out what and how they accomplished 
this. Fantastic!
