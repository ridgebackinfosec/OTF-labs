# Setup

## Virtual Machines (VMs)

???+ warning
    These VMs are BIG! The initial zip file is ~**6GB**.

**Complete the below checklist:**

- [x]  Download the VMs
- [x]  Ensure you have the supported virtualization software (VMware) on your host machine
- [x]  Extract/Unzip the VMs
- [x]  Import the VMs into VMware
- [x]  Network Configuration
- [x]  Power on VMs
    - [x]  Complete any other specific actions in the VM’s section
- [x]  Check connectivity

---

## Network Configuration

All virtual machines should be pre-configured with at least one network interface in Network Address Translation (NAT) mode. This is required for the VMs to access the internet. After downloading and importing the VMs, students should verify each VM is indeed in NAT mode. This can be done using the steps below.

## “The Forge” VM

???+ warning
    ***Never expose The Forge to an untrusted network, always use NAT or Host-only mode!***

???+ warning
    👤 **Credentials:**
    The Forge VM is built on top of ParrotOS and will have the username `telchar` and password `ridgeback`.

This will be the primary VM and will be used as the “attacker’s” machine.

<!-- Moved this step to the repo's README -->
<!-- ### Lab Guide & Tool Install Script

Once imported into VMware, turn The Forge VM on, login, open a terminal and run the below commands to download and setup the Lab Guide and tools for the class. 

This is intended to reduce initial download size, make it easy for students to hit the ground running, control tool versions, and permit dynamic updating of the course material.

```bash linenums="1"
cd ~
curl -sSfL https://raw.githubusercontent.com/ridgebackinfosec/OTF-labs/refs/heads/main/labs-and-tools.sh -o ~/labs-and-tools.sh
chmod 744 ~/labs-and-tools.sh
./labs-and-tools.sh
```

???+ warning
    You will be prompted for the password when running the `labs-and-tools.sh` script. -->

### OWASP Juice Shop

The Forge VM will have the `juice-shop` APT package to deploy a local instance of the Open Worldwide Application Security Project (OWASP) Juice Shop for you to play with before, during, or after the class.

> “OWASP Juice Shop is probably the most modern and sophisticated insecure web application! It can be used in security trainings, awareness demos, CTFs and as a guinea pig for security tools! Juice Shop encompasses vulnerabilities from the entire OWASP Top Ten along with many other security flaws found in real-world applications!

> The application contains a vast number of hacking challenges of varying difficulty where the user is supposed to exploit the underlying vulnerabilities. The hacking progress is tracked on a score board. Finding this score board is actually one of the (easy) challenges!”
~OWASP

???+ warning
    The command below will start the local instance of OWASP Juice Shop on `http://127.0.0.1:42000`. 

    It will state that, in the terminal output, that it will open a browser for you. This is a LIE. It is broken in ParrotOS currently. So, you’ll need to open a browser manually and navigate to the above address. 😢

```bash
sudo juice-shop -h
```

![Starting Juice Shop](img\Untitled%208.png){ width="70%" }
/// caption
Starting Juice Shop
///

You can now access the vulnerable web app by loading [http://127.0.0.1:42000](http://127.0.0.1:42000) in your VM’s browser.

The command below will stop the local instance of OWASP Juice Shop.

```bash
sudo juice-shop-stop -h
```

![Stopping Juice Shop](img\Untitled%209.png){ width="70%" }
/// caption
Stopping Juice Shop
///

## Metasploitable3 VM

???+ warning
    Never expose Metasploitable3 to an untrusted network, use NAT or Host-only mode!

???+ warning
    👤 **Credentials:**
    After a brief time, the system will be booted and ready for use. The default credentials will be a username of `vagrant` and a password of `vagrant`.

Metasploitable3 is a virtual machine built on Linux and designed to have multiple intentional vulnerabilities for penetration testing. It serves as an all-in-one lab that can be used to practice exploiting vulnerabilities.

## Check Connectivity

Once all of the steps above have been completed, turn on and log into both VMs, find their IP address using `ifconfig` in the terminal, and run ping commands between each VM.

```bash
# Sample ping command
ping -c 4 8.8.8.8
```

If everything is setup correctly, you should see `0% packet loss` following each ping command.

![Successful Pings!](img\ping_success.png){ width="70%" }
/// caption
Successful Pings!
///