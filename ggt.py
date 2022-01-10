import os
print('Good Github Tool v1.0')
author = input('Введите имя автора: ')
if author != 'exit!':
	repo = input('Введите название репозитория: ')
	final = 'git clone https://github.com/' + author + '/' + repo
	os.system(final)
else:
	exit()