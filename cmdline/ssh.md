# ssh

## About ssh-agent and ssh-add
In Unix, ssh-agent is a background program that handles passwords for SSH private keys. The ssh-add command prompts the user for a private key password and adds it to the list maintained by ssh-agent. Once you add a password to ssh-agent, you will not be prompted for it when using SSH or scp to connect to hosts with your public key.

## Usage
1. At the Unix prompt, enter:
```
$ eval $(ssh-agent)
```
2. Enter the command:
```
$ ssh-add
```
3. Enter your private key password.
4. When you log out, enter the command:
```
kill $SSH_AGENT_PID
```
To run this command automatically when you log out, place it in your .logout file (if you are using csh or tcsh) or your .bash_logout file (if you are using bash).
