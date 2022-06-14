
# # DockerJenkinsNexus

Hi! The repo is compose of a docker compose and shell script to create the necessary containers.

# Files

 - Dockercompose creating the network, volumes, jenkins and nexus containers.
 - buildDockerinfra.sh will help you to run execute the docker compose.

## Execute the shell script

Run the shell script 

    sh buildDockerinfra.sh

You should have a result like this

 - [x] + docker-compose up -d --build --force-recreate
 - [x] Creating dockerjenkinsnexus_nexus_1   ... done
 - [x] Creating dockerjenkinsnexus_jenkins_1 ... done

## Access the Jenkins webserver

From the host, open your favorite web browser and enter the address (please note that the service listen on any ip so not only on localhost)

> http://127.0.0.1:8989

The first page will ask you get the initial password located in the container
You have two ways to access the file:
1. By command line : docker exec -it dockerjenkinsnexus_jenkins_1 cat /var/jenkins_home/secrets/initialAdminPassword
2. Or from you host by locating the volume folder:  cat /var/lib/docker/volumes/dockercicd_jenkins-data/_data/secrets/initialAdminPassword

![enter image description here](https://raw.githubusercontent.com/djmhd/DockerJenkinsNexus/main/images/Jenkins%201.jpg)

![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Jenkins%202.jpg)

Enter the initial password

3. Select the plugins you need to install

![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Jenkins%203.jpg)

You are ready to work with Jenkins.

## Access the Nexus web server

From the host, open your favorite web browser and enter the address (please note that the service listen on any ip so not only on localhost)

> http://127.0.0.1:8990

![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Nexus%201.jpg)

Clic on "Sign in" link on the top right corner of the page.
The default user is admin.
To find the password.
You have two ways to access the file:
1. By command line : docker exec -it dockerjenkinsnexus_nexus_1 cat /nexus_data/admin.password
2. Or from you host by locating the volume folder:  cat /var/lib/docker/volumes/dockercicd_nexus-data/_data/admin.password
Then you will arrrive to this page.

![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Nexus%202.jpg)

Click on "Next" button.

Change the password and click on "Next" button.
![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Nexus%203.jpg)

Enable or disable anonymous access and click on "Next" button.
![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Nexus%204.jpg)

Now you are ready to use Nexus.
![enter image description here](https://github.com/djmhd/DockerJenkinsNexus/raw/main/images/Nexus%205.jpg)
