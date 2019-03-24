#!/usr/bin/python
base = open("/app/dojo/templates/base.html").read()
cookie = open("/opt/heroku-DefectDojo/scripts/cookies.html").read()
ga = open("/opt/heroku-DefectDojo/scripts/ga.html").read()
base = base.replace('<title>', ga + cookie + '<title>')
f = open("/app/dojo/templates/base.html", 'w')
f.write(base)
f.close()
