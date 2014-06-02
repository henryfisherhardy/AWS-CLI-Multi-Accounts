AWS CLI Accounts Tool

This is built to get around the issue of doing admin on multiple AWS accounts.

modify your .bash_profile (or where ever for whatever you're running ).

     cd  

then just put the aws.sh file into the locaation set above - so ~/bin/aws.sh

To use simply type

    aws.sh profile_name

where profile name is the name you set for each collection of credentials -

for example,

    aws.sh dag

would change to the dag credentials.

Huzzah! for easy AWS managment.
You may also need to chmod the aws.sh file

    chmod 700 ~/bin/aws.sh
