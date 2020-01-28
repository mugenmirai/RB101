produce = { 'apple' => 'Fruit', 'carrot' => 'Vegetable', 'pear' => 'Fruit', 'brocoli' => 'Vegetable'}

p produce
p produce.class


def select_fruit(items)
  haribo = items.select {|k,v| v == 'Fruit'}
  haribo
end

p select_fruit(produce)
p produce
