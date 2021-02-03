# EB-Flask-ContinuousDelivery
Source code for a continuously delivered Flask Application on Amazon Web Services. The application is build and deployed using Elastic Beanstalk and the continuous deployment is coordinated with CodeBuild.

**Demo Video**  
[![alt text](https://github.com/malcolmsfraser/ml-gcp/blob/main/CDproject-thumbnail.jpg)](https://youtu.be/cK-KkWaCG9Y?t=90)  
[[See this setup on GCP]](https://github.com/malcolmsfraser/ml-gcp)
### Setting up this application on your own (in AWS Cloud9) 

In the Cloud9 terminal run the following:

>Set the new project
>Clone this repository and set it as the working directory
>```{bash}
>git clone https://github.com/malcolmsfraser/EB-FlaskApp-CD-CI.git
>cd EB-FlaskApp-CD-CI
>```
>Create a virtual environment and source it
>```{bash}
>python3 -m venv ~/.venv 
>source ~/.venv/bin/activate
>```
>Install dependencies
>```{bash}
>make install
>```
>Make sure the flask application is working properly
>```{bash}
>python application.py
>```
>Lint, setup elastic beanstalk and deploy application
>```{bash}
>make create_all
>```
>*Note this command creates the EB environment in the us-east-1 region. If you this needs to be different feel free to edit the Makefile*

### Setting up continuous delivery to your own repository

Create a new, empty repository on GitHub

In the Cloud9 termimal run the following:

>If needed: create new ssh keys:
>```{bash}
>ssh-keygen -t rsa
>```
>Initiate git and re-assign remote repo origin
>```{bash}
>git init
>git remote rm origin
>git remote add origin <path-to-your-github-repo>
>```
>Follow any other prompts for setting up the connection

Back on the AWS dashboard

>Navigate to the IAM dashboard
>Navigate to the Roles tab
>>Create a role for CodeBuild to allow it access to Elastic Beanstalk  

Navigate to the CodeBuild dashboard

>Select "Create Build Project"  
>Follow directions to create a Push trigger linked to your repository.
>Make sure to attach the service role you created in the previous step

