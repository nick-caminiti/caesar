def caesar_cipher(string, shift_num)
  char_array = string.split('')
  new_string_array = []  

  i = 0
  while i < char_array.length  
    char_ord = char_array[i].downcase.ord
    if char_ord.between?(97,122)
      if (char_ord + shift_num) <= 122
        new_char_ord = (char_ord + shift_num)
      else
        new_char_ord = (char_ord + shift_num - 122 + 96)
      end
      if char_array[i].ord  == char_array[i].downcase.ord 
        new_char_ord.chr
      else
        # convert back to upper case
        new_char_ord -= 32
      end
    elsif 
        new_char_ord = char_array[i]
    end
    new_string_array[i] = new_char_ord.chr

    i +=1
  end
  p new_string_array.join
end 

caesar_cipher("This is encrypted", 1)


# a - 97
# z - 122
# A - 65
# Z - 90