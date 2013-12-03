# Solution for Challenge: Anagrams 2: Generating Anagrams. Started 2013-08-08T00:52:53+00:00def canonical(word)
  word.downcase.split('').sort.join
end


def is_anagram?(string1,string2)
  canonical(string1) == canonical(string2)
end


puts is_anagram?('acres', 'cares')


def anagrams_for(word, dictionary)
  dictionary.each do |d|
    if is_anagram?(word, d)
      p d
    end
end
end
# The dictionary is just an arbitrary collection of strings.
# It need not contain English words, e.g., 'etlsm'.
dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm']

# If the input word happens to be in the dictionary, it should be in the the returned array, too.
# The list should also be case-insensitive.
anagrams_for('acres', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
# anagrams_for('ACRES', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']
# anagrams_for('Cesar', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

# # Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"
# anagrams_for('sacre', dictionary)   # => ['acres', 'cares', 'Cesar', 'races']

# # Neither the input word nor the words in the dictionary need to be valid English words
# anagrams_for('etlsm', dictionary)   # => ['smelt', 'melts', 'etlsm']

# anagrams_for('unicorn', dictionary) # => []

