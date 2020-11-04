filetosearch = './'
texttoreplace = 'schuler.io'
texttoinsert = 'example.com'

s = open(filetosearch).read()
s = s.replace(texttoreplace, texttoinsert)
f = open(filetosearch, 'w')
f.write(s)
f.close()
quit()
