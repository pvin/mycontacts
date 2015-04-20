module ContactsHelper
  def get_first_num(array_as_string)
    if array_as_string.nil?
        nil
    else
      begin
        clean_string = array_as_string.scan(/'(.*)'/)
        flatten_string = clean_string.flatten
        first_string = flatten_string[0].split("-")[0]
        final_first_num = first_string[/\d+/]
      rescue Exception => e
        array_as_string
      end
    end

  end

  def get_first_addr(array_as_string)
    if array_as_string.nil?
      nil
    else
      begin
        clean_string = array_as_string.scan(/-(.*)/)
        flatten_string = clean_string.flatten
        final_first_addr = flatten_string[1]
      rescue Exception => e
        array_as_string
      end
    end

  end

  def get_first_country(array_as_string)
    if array_as_string.nil?
      nil
    else
      begin
        clean_string = array_as_string.scan(/-(.*)/)
        flatten_string = clean_string.flatten
        final_first_country = flatten_string[1]
      rescue Exception => e
        array_as_string
      end
    end

  end

end
