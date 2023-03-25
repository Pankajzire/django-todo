# django-todo
A simple todo app built with django

![todo App](https://raw.githubusercontent.com/shreys7/django-todo/develop/staticfiles/todoApp.png)
### Setup 1 :To run manually use these steps, To run on Docker directly jump to step 2




* Launch EC2 Instance(ubuntu) connect to it 
* To get this repository, run the following command inside your git enabled terminal
```bash
 git clone https://github.com/Pankajzire/django-todo.git
```
* You will need django to be installed in you computer to run this app. 

* run the following command

      cd django-todo   
*
      sudo apt install python3-pip -y
*      
      pip install django
     
```bash
 python3 manage.py makemigrations
```

* This will create all the migrations file (database migrations) required to run this App.

* Now, to apply this migrations run the following command
```bash
 python3 manage.py migrate
```

* One last step and then our todo App will be live. We need to create an admin user to run this App. On the terminal, type the following command and provide username, password and email for the admin user
```bash
 python3 manage.py createsuperuser
```

* That was pretty simple, right? Now let's make the App live. We just need to start the server now and then we can start using our simple todo App. Start the server by following command

```bash
 python3 manage.py runserver 0.0.0.0:8001
```

* Once the server is hosted, head over to http://0.0.0.0:8001/todos for the App.
* To keep it running 
       nohup python3 manage.py runserver 0.0.0.0:8001

#### Step 2 : Run using Docker. 
* Launch EC2 Instance(ubuntu) connect to it 
 
* To get this repository, run the following command inside your git enabled terminal

```bash
 git clone https://github.com/Pankajzire/django-todo.git
```
* To install Docker

      sudo apt  install docker.io -y

* To list Process running on port 8001 (if followed step 1)
    
      lsof -i:8001
    
* To kill the previous running (if followed step 1)

      kill "enter PID of the process"
    
* To Create Docker file

      vi Dockerfile

* Paste following in vi tab

      FROM python:3
      RUN pip install django==4.1.7
      COPY . .
      CMD ["python","manage.py","runserver","0.0.0.0:8001"]

* To build Docker Image

      sudo docker build . -t todo-app

* To list running Docker Images

      sudo docker ps
      
* To run Docker Image

      sudo docker run -p 8001:8001 "enter container ID"
      
* To keep it Running use -d (docker deamon) wit it

      sudo docker run -p -d 8001:8001 "enter container ID"


Deployed End-to-End Web-App by a CICD Pipeline using GitHub, Docker, Jenkin, AWS.  



  
