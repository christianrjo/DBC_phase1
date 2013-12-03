def canonical(word)
  word.split('').sort.join
end


def is_anagram?(string1,string2)
  canonical(string1) == canonical(string2)
end


puts is_anagram?('acres', 'cares')

