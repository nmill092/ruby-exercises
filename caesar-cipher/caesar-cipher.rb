def caesar_cipher(str, factor)
  alphabet_size = 26
  encrypted = ""

  str.each_char do |char|
    if char =~ /[a-zA-Z]/ # if it's a letter ...
      base = char =~ /[a-z]/ ? 'a' : 'A' # get the base letter
      encrypted_char = (char.ord - base.ord + factor) % alphabet_size + base.ord
      encrypted << encrypted_char.chr
    else
      encrypted << char
    end
  end

  encrypted
end
