f = open('simple_advanced_flags.txt', 'r')
args_list = []

for line in f:
  args_list.append(line.lstrip(' ').split(' ')[0])

print args_list