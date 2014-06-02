AWS CLI Accounts Tool

This is built to get around the issue of doing admin on multiple AWS accounts.

modify your .bash_profile (or where ever for whatever you're running ).

     alias aws='client=$1 source ~/bin/aws.sh $client'  

then just put the aws.sh file into the locaation set above - so ~/bin/aws.sh will be the path of the script.

To use simply type

    aws profile_name

where profile name is the name you set for each collection of credentials - so you'll need to go in and modify each of the details in the bash script. Once done you can just change profiles like above. Below is an example.

for example,

    aws dag

would change to the dag credentials.

Huzzah! for easy AWS managment.
You may also need to chmod the aws.sh file

    chmod 700 ~/bin/aws.sh

What this is actually doing is overwriting the config file aws cli looks for when you try to do anything that requires credentials - which is pretty much everything in the CLI. If you have a different path to your credentials, you'll just need to modify the path in the shell script.

Hope this helps!
