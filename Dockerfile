ARG DD_TAG=latest
FROM defectdojo/defectdojo-nginx:$DD_TAG as build

FROM defectdojo/defectdojo-django:$DD_TAG
USER root
ADD --chown=1001:1001 . /opt/heroku-DefectDojo
RUN python /opt/heroku-DefectDojo/scripts/ga_insert.py
COPY --from=build /usr/share/nginx/html/static/ /app/static/

USER 1001
#unset parent entrypoint
ENTRYPOINT []
CMD gunicorn --bind 0.0.0.0:$PORT wsgi
