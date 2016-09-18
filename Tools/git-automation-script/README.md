## Git automation for Microsoft Azure
This is a script file for Microsoft Azure users who are using Git for their version control 
and source code management systems. This is my initial source code for this tool and at the moment 
it doesn't support unit testing and integration testing at the moment. Current features include:

1. Executing the build of current project
  - Executes `dotnet build`. 
  - Tests the build results and moves onward.
2. Checks if there were changes that need to be published. 
3. Publishes the project to the Azure.

The drawbacks are that most of the stuff is hardcoded at the moment. For example, you require to 
change the git remote name for the project, otherwise set it as `azurewebservice` using the 
command, `git remote add azurewebservice 
http://username@appname.scm.azurewebsites.com:443/appname.git`. This way most of the script would 
run successfully. 

My major focus now is to integrate the tests in the script to run the tests too, and a few other 
settings such as passing the name fo the git remote to push the application onto. 

_v0.1_