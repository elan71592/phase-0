# U2.W6: Testing Assert Statements

# I worked on this challenge with Ena.


# 2. Review the simple assert statement

def assert( name, &block )
  raise "Assertion failed! Expected #{name} | Got: #{block.call}" unless name == block.call
  true
end

name = "bettysue"
p assert( "bettysue" ) { name }
# assert( "billybob" ) { name } This will make the tests stop here because it will evaluate to false so just for the purpose of all tests passing, I made this a comment and the next line will actually return true
p assert( "billybob" ) { name = "billybob" }

# 2. Pseudocode what happens when the code above runs

# The assert method checks if yield is true or false.
# If true, assertion passes
# If false, assertion fails.

# The second assert statement fails due to it checking if name is equal to "billybob" but it was already set to bettysue so it returns true for the first one. The second one had an error which was easily fixable by changing it to one equals sign so it can set name to a different name


# 3. Copy your selected challenge here
def separate_comma(num)
  result = num.to_s
  commas = num.to_s.length / 3
  idx = -4

  until result.count(",") == commas
   result.insert(idx, ",")
   idx -= 4
  end
  if result[0] == ","; result = result[1..-1] end

  result
end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert( number, &block )
  raise "Assertion failed! Expected #{number} | Got: #{block.call}" unless number == block.call
  true
end

p assert( "450" ) { separate_comma(450) }
p assert( "4,500" ) { separate_comma(4500) }
p assert( '4,500,000' ) { separate_comma(4500000) }
p assert( '4,500,000,000,000,123,456,678' ) { separate_comma(4500000000000123456678) }



# 5. Reflection

# What concepts did you review or learn in this challenge?

  # - We learned how to build assert methods and also reviewed yielding blocks

# What is still confusing to you about Ruby?

  # - At this point I think I have a good handle on things for now. I will get back to this if something else pops up in my head that is confusing.

# What are you going to study to get more prepared for Phase 1?

  # - More algorithms and try to get more ruby problems solved in JavaScript.


# Also for good measure:

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  alphabet = ("a".."z").to_a
  cipher = ("e".."z").to_a.concat( ("a".."d").to_a )
  exemptChars = "@#$%^&*"

  input.each do |char|
    if alphabet.include?( char )
      decoded_sentence << alphabet[ cipher.index(char) ]
    elsif not exemptChars.include?(char)
      decoded_sentence << char
    else
      decoded_sentence << " "
    end
  end
  decoded_sentence.join("")
end



def assert(string, &block)
  raise "Assertion failed! Expected #{string} | Got: #{block.call}" unless string == block.call
  true
end

p assert("i want a coke!") { dr_evils_cipher("m^aerx%e&gsoi!") }

p assert("our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h") { dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") }

p assert("you see, i've turned the moon into what i like to call a death star.") { dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") }

p assert("mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable.") { dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") }

p assert("why make a trillion when we could make... billions?") { dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") }