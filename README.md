# devopsOSS

This is a basic PoC to provide an overview of devops pipeline using Jenking, github and docker to run and operate 
an OSS environment.

# demo sequence
1)
	- clean up running/stopped container
	- remove existing omnibus image
	- run master branch to create Omnibus 8.1.0.5 image
	- show pipeline status
	- show pipeline logs
	- show images created
	- show running container and output

2)
 	- checkout branch "Omnibus 8.1.0.5-prod" 	
	- visualize changes in Jenkinsfile (conditional approval of deployment to production)
	- checkout master branch
	- merge  Omnibus 8.1.0.5-prod into master
	- commit
	- visualize changes in Jenkinsfile
	- run master branch
	- show status, logs, images, container and output

3)
	- checkout branch "Omnibus 8.1.0.9"
	- visualize changes in Jenkinsfile (this time we are installing FP9)
	- checkout master branch
	- merge Omnibus 8.1.0.9 into master branch
	- run
	- As above

4)	
	- revert master branch
	- run and verify revert
	
