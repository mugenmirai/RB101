hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }




p hsh.keys.each_with_index {|x, idx| idx.even? ? (hsh[x] = 'Fruit') : (hsh[x] = 'Vegetabe')}
p hsh 