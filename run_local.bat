@echo off
echo Installing dependencies...
pip install -r requirements.txt

echo Starting application with gunicorn...
gunicorn app:app --bind 0.0.0.0:5000

pause