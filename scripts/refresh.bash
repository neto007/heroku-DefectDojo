#!/usr/bin/env bash
cd /app
python manage.py flush --no-input
python manage.py loaddata /app/dojo/fixtures/defect_dojo_sample_data.json
