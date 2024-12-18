# Essential UNIX for bioinformatics
Vanesa Fernandez

**key words:** unix: terminal commands, hirarchy directories, processing
texts; AWS, SRA toolkit

1)  Rstudio: Go to the terminal (if MAC open “terminal”, if PC = Git
    Bash)
2)  pwd = Print Working Directory (where you’re working at, folders) –
    *absolute path*, which specifies a location from the root of the
    file system.
3)  ls = list of files in this directory
4)  cd = change directory
5)  mkdir == make a new directory

In unix it is important data organization. If you download a dataset and
goes to the downlaods folder, I can write the path in terminal to start
extracting it for R analsysis.

If you are in a folder from a path directory and want to change to
another folder you can use “..” to do so. “..” takes you one folder up,
the parent folder. Is User/vane/Downloads/data.csv Is ..Downloads/*.csv
\<– the asterisk means pull out all of these type of files Is
~/Downloads/*.csv \<– tilde: takes you to the home directory folder

touch : it’s a command. Example: \## I don’t understand this part

Avoid using spaces when naming folders, it is best to use “\_”

**rm** : remove command. it will automatically erase everything in the
folder or file called out. BE CAREFUL IF USING IT. it is useful when you
want to delete a bunch of same type of documents. EXAMPLE rm
~/Downloads/\*.csv \<— can remove all the .csv files in this folder.

nano : command to create a text file you can work (write stuff) from the
terminal. EXAMPLE:nano my_notes.txt – creates a txt file. to exit the
file : control+x –\> it will give you options regarding what you want to
do with the new text file.

Processing text: strings, RNA sequences, proteomes etc.

less : command to see texts

> AWS instances, webclass
> [here](https://bioboot.github.io/bggn213_F24/class-material/aws_01.html)

VMs: Virtual Machines Amazon EC2

Accessing the AWS console through [ucsd](https://awsed.ucsd.edu/) and
sso credentials

For computing in the cloud.

ubuntu most free Linux used instance type: m5.2xlarge it’s pretty good
to compute

Use a key pair to securely connect to your instance. Mine will be:
**bggn213_vf**. bggn213_vf downloaded as a pem file in my Downloads
folder. Thus, this is going to be the folder I’ll be pulling out to
connect to the cloud computer in later steps (below).

Network settings \>\> Select existing security group \>\>
BIMM143/BGGN213 FA20…

Hit Launch instance

Click “Connect to your instance” \>\> SSH client SSH: -i – this is how
SSH would be written below

Go to terminal and type:

chmod 400 ~/Downloads/bggn213_vf.pem \<— note that we need to call the
path first

THEN:

ssh -i “~/Downloads/bggn213_vf.pem”
ubuntu@ec2-54-218-103-23.us-west-2.compute.amazonaws.com

Now I am in my Virtual Machine from my laptop, when typin ing terminal I
can check fro this ubuntu@ip-172-31-8-45:~\$ pwd /home/ubuntu
ubuntu@ip-172-31-8-45:~\$ Is Is: command not found
ubuntu@ip-172-31-8-45:~\$ mkdir work ubuntu@ip-172-31-8-45:~\$ pwd
/home/ubuntu ubuntu@ip-172-31-8-45:~\$ cd work/
ubuntu@ip-172-31-8-45:~/work\$

17: Analyzing sequencing data in the cloud “Obtaining and processing SRA
datasets on AWS”

Get the SRA-toolkit software package. With this you would be able to get
all the raw data from any paper. type this into the terminal: curl -O
https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz

Type list (ls) command:

ubuntu@ip-172-31-8-45:~/work\$ ls sratoolkit.current-ubuntu64.tar.gz

type tar -zxvf sratoolkit.current-ubuntu64.tar gunzip

scp
