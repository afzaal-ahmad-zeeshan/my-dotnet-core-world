# Variables
commit_message="Deployment commit on $(date "+%B %dth, %Y at %H:%M %p")."

# Run the test
dotnet build

if [ $? == 0 ]
    then
        # Successful attempt.
        # Update the git.
        git add -A

        echo "Using commit message, \"$commit_message\"."
        git commit -m "$commit_message"
        
        # Check if anything was commited, or whether there were no changes.
        if [ $? == 0 ]
            then 
                # Files need to be updated
                # Update the azure's repository.
                echo "Connecting to server for git push..."
                git push azurewebservice master
                exit 0
            else 
                echo "No changes to be pushed to server. Terminating."
                exit 1
        fi
        exit
    else 
        # There must have been an issue in the execution.
        echo "There were errors in building process, fix them and re-try."
        exit 1
fi
