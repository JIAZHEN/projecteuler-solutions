max_chain_length, starting_num = 1, 0
for i in 13..1_000_000
n, chain_length = i, 0
while n != 1
n = n.even? ? n/2 : (3*n+1)
chain_length += 1
end
starting_num, max_chain_length = i, chain_length+1 if max_chain_length < chain_length
end
starting_num