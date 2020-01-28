def select_fruit(produce_list)
  produce_keys = produce_list.keys 
  counter = 0
  select_fruits = {}
  loop do 
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      select_fruits[current_key] = current_value
    end

    counter += 1
  end
  select_fruits
end


produce = { 'apple' => 'Fruit', 'carrot' => 'Vegetable', 'pear' => 'Fruit', 'brocoli' => 'Vegetable'}
p select_fruit(produce)