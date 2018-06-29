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
	- stop and remove repo container
 	- checkout branch "Omnibus 8.1.0.9" 	
	- visualize changes in Jenkinsfile 
	- modify simnet.rules file and add new version or some rules file changes
	- commit branch Omnibus 8.1.0.9 and push
	- checkout master branch
	- merge  Omnibus 8.1.0.9 into master
	- commit and push
	- run master branch
	- show status, logs, images, container and output

3)
	- run 2 or 3 different container using both 8.1.0.5 and 8.1.0.9 images
	- show branches in github
	- show container info in kinematic
	- more? 

4)	optional	
	- revert master branch
	- change Jenkinsfile back to initial build (remove fp9)
	- run and verify revert
	- run build
	- verify log etc etc
	
