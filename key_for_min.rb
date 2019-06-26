ikea = {:chair => 25, :table => 85, :mattress => 450}

# This didn't pass because it calls the "value" method
def key_for_min_value_my_try(name_hash)
  name_hash.key(name_hash.values.min)
end

key_for_min_value_my_try(ikea)


def key_for_min_value(hash)
  smallest_key = nil
  tiniest_value = nil
  hash.each do |key, value|
    if tiniest_value == nil || value < tiniest_value
      tiniest_value = value
      smallest_key = key
    end
  end
  smallest_key
end

key_for_min_value(ikea)


  