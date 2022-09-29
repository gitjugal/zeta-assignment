import paramiko
import sys
hostname = ["10.176.116.135","10.176.116.136"]
myuser   = ['azurevm','azurevm']
mySSHK   = ['ivt-common-dev','ivt-common-dev']

for i, (ip, user, sshk) in enumerate(zip(hostname[0:], myuser[0:], mySSHK[0:]), 1):
    print("Open session in: " + ip + "...")
    sshcon   = paramiko.SSHClient()  # will create the object
    sshcon.set_missing_host_key_policy(paramiko.AutoAddPolicy()) # no known_hosts error
    sshcon.connect(ip, username=user, key_filename=sshk) # no passwd needed
    for i in range(1, len(sys.argv)):
        stdin, stdout, stderr = sshcon.exec_command(sys.argv[i])
        exit_status = stdout.channel.recv_exit_status()          # Blocking call
        if exit_status == 0:
            print ("Command Executed Successfully")
            print (stdout.readlines())
        else:
            print("Error while executing command", exit_status)
    stdin.close()