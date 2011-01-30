class Sprakd
  class Word
    
    attr_accessor :word, :lemma, :part_of_speech, :tokens, :extra
    
    # TODO: More elegance
    def initialize(word, lemma, part_of_speech, tokens, extra = {}, info = {})
      @word = word.dup
      @lemma = lemma.dup
      @part_of_speech = part_of_speech
      @tokens = tokens
      @extra = extra
      @info = info
    end
    
    # TODO: the main part of a word, for example 重要 in 重要な
    def main_part
    end

    def base_form
      @lemma
    end
    
    def inflected?
      @word != @lemma
    end

    def as_json
      {
        :word => @word,
        :lemma => @lemma,
        :part_of_speech => @part_of_speech.name,
        :extra => @extra
      }
    end
    
  end
end
