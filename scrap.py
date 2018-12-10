import requests
from bs4 import BeautifulSoup
url = 'https://pt.wikipedia.org/wiki/Unidos_de_Vila_Isabel'
page = requests.get(url)
soup = BeautifulSoup(page.text, 'html.parser')
enredos = soup.find_all('table')[12].find_all('tr')

for enredo in enredos:
	if enredo.td:
		if len(enredo.find_all('td')) > 3:
			ano = enredo.find_all('td')[0].get_text()
			nome = enredo.find_all('td')[3].get_text()
			titulo = nome.split('"')[1]
			print("UPDATE enredos SET nome ='"+titulo+ "'  where id_escola = 1 and ano =" + ano + ";")
		else:
			print("")
	else:
		print("")
print("commit;")