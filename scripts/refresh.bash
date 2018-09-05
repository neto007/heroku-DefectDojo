#!/usr/bin/env bash
python manage.py flush --no-input
python manage.py loaddata /opt/django-DefectDojo/dojo/fixtures/defect_dojo_sample_data.json
