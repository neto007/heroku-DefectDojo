FROM slim

ADD --chown=dojo:dojo . /opt/heroku-DefectDojo
RUN python /opt/heroku-DefectDojo/scripts/ga_insert.py

CMD gunicorn --bind 0.0.0.0:$PORT wsgi
