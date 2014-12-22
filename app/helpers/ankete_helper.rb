module AnketeHelper
  def pluralize_greska(anketa_errors_count)
    last_digit = anketa_errors_count.to_s.chars.map(&:to_i).last
    if (11..19) === anketa_errors_count
      return anketa_errors_count + "grešaka sprečava"
    else
      if last_digit == 1
        return "#{last_digit} greška sprečava"
      elsif last_digit === (2..4)
        return anketa_errors_count + "greške sprečavaju"
      elsif last_digit === (5..9)
        return anketa_errors_count + "grešaka sprečavaju" 
      elsif last_digit == 0
        return anketa_errors_count + "grešaka sprečavaju"                 
      end       
    end
  end
end
