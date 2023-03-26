FROM python:3
RUN pip install django==4.1.7
      
COPY . .

EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
