f = open('enums.txt', 'r')
args_list = []

for line in f:
	if '=' in line:
		continue
  	args_list.append(line.lstrip(' ').split(' ')[0])

print args_list