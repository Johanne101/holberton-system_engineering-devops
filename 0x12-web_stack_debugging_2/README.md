Web stack debugging #2
=======
***Concept Index...***:

1. [Run software as another user](#01)

2. [How to create an HTML page](#HTML_steps)

3. [What is a markup language](#markup_language)

4. [What is the DOM](#DOM)

5. [What is an element / tag](#element/tag)

6. [What is an attribute](#Atributes)

### Requirements:
***General***

```.md
All your files will be interpreted on Ubuntu 14.04 LTS
All your files should end with a new line
A README.md file at the root of the folder of the project is mandatory
All your Bash script files must be executable
Your Bash scripts must pass Shellcheck without any error
Your Bash scripts must run without error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
```

## How to Run software as another user?
<p>
>>You can run commands as different users in Ubuntu using sudo and su.

**With sudo**

Just use the following params:

* **-H** to load the Home environment variables of the user.
* **-u** to run the command as another user.
* **-c** to execute a bash command.

```#!/usr/bin/env bash
sudo -H -u billy bash -c 'echo "My name is: $USER, my uid is: $UID"'
```

>>Or just become the user using the **-i** flag to invoke the login shell and -u to define the user:

```bash
sudo -i -u USER_NAME
```

</p>

Resources
======

***read or watch:***
* [Intro to Debugging](https://github.com/Johanne101/holberton-system_engineering-devops/blob/main/0x13-firewall/README.md#intro)
* [Run command as different user in Ubuntu](https://www.developerfiles.com/run-command-as-different-user-in-ubuntu/)
* [Linuz Run Command As Another User](https://www.cyberciti.biz/open-source/linux-run-command-as-different-user/)
* [Running script as another user](https://www.baeldung.com/linux/run-as-another-user#1-running-a-specific-script-as-another-user)
* [Allow user1 to sudo user2 w/out a password](https://unix.stackexchange.com/questions/113754/allow-user1-to-su-user2-without-password/115090#115090)

