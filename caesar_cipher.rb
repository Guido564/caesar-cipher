def caesar_cipher(string, position=0)
    string_to_array = string.split('')
    character_to_codes = []

    string_to_array.each do |char|
        if (char.ord >= 65 && char.ord <= 90)
            character_to_codes.push(((char.ord - 65 + position) % 26) + 65)
        elsif (char.ord >= 97 && char.ord <= 122)
            character_to_codes.push(((char.ord - 97 + position) % 26) + 97)
        else
            character_to_codes.push(char.ord)
        end
    end
    
    character_to_codes.map {|character| character.chr}.join()
end

p caesar_cipher("ABCD abcd", 12)