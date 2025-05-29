# OTF-labs
Welcome to Offensive Tooling Foundations!

## Pre-class VM Setup

You should have received the VM download link via email or Discord. If you have not already done so, download the VMs **now**.

Please read through and complete the instructions below regarding supported virtualization software, extracting the VMs, importing the VMs, and installing the tools ***before*** class. 

Additional setup details for each VM (credentials, network config, etc.) will be covered during class.

<details>

<summary>Virtualization Software</summary>

### VMware

First, you will need to download and install VMware on your host machine. Both Workstation Pro (Windows/Linux) and Fusion Pro (Mac) are now FREE!

You can follow the guide in the below blog post’s URL to obtain installation file you need.
[https://blogs.vmware.com/workstation/2024/05/vmware-workstation-pro-now-available-free-for-personal-use.html](https://blogs.vmware.com/workstation/2024/05/vmware-workstation-pro-now-available-free-for-personal-use.html)

Be sure to select the “Personal Use” option to avoid needing a paid license.

![image](https://github.com/user-attachments/assets/047ea115-1852-4e73-9cd5-1b2b283e768f)

### Alternative: VirtualBox

You can use VirtualBox, but it fails about 25% of the time on either networking or USB support. If you hate yourself, use VirtualBox. Otherwise, use VMware.

**NOTE: We only officially support VMWare for class troubleshooting.**

</details>

<details>

<summary>Extracting the VMs</summary>

Next, you will want to extract the compressed files to a directory on your system. The exact process will change based on your system. Usually right-clicking and extracting the files with the 7-Zip tool (or your local decompression tool) you chose to install will do the trick.

### 7-Zip

7-Zip is a good option because it is the most consistent for decompressing large files. (Native unzipping utilities tend to choke on very large files.)

Below are some options:

- **7-ZiP:** [https://www.7-zip.org/download.html](https://www.7-zip.org/download.html)
- **7-Zip support for Linux:** [https://itsfoss.com/use-7zip-ubuntu-linux/](https://itsfoss.com/use-7zip-ubuntu-linux/)
- **7-Zip utility for Mac:** [https://www.keka.io/en/](https://www.keka.io/en/)

</details>

<details>

<summary>Importing the VMs</summary>

Next, we need to get the VMs loaded in VMWare.

To do that, Open VMWare and then select **File > Open (use “Import” on VMware Fusion) >** then navigate to where you downloaded the files.

![Untitled](https://github.com/user-attachments/assets/ce437693-2c66-4b86-9934-f0ece820ec01)

Give the VM a name and click **Import**.

![Untitled1](https://github.com/user-attachments/assets/40bbc892-7788-40ee-ac0b-ebfea0d961c8)

You may get a consistency error. If you do, do not worry. Just select **Retry** or **Try Again**. It should work.

</details>

<details>

<summary>VM Snapshots</summary>

At this point, it's always a good idea to create a snapshot of your VMs' initial state using VMware.

This enables us to quickly revert back if you run into any issues during class or if you want to start over completely.

</details>

<details>

<summary>Lab Guide & Tool Installation</summary>

Turn The Forge VM on, login using the creds `telchar:ridgeback`, open a terminal, and run the below commands. 

```bash
git clone https://github.com/ridgebackinfosec/OTF-labs ~/OTF-labs
cd ~/OTF-labs
chmod 744 labs-and-tools.sh
./labs-and-tools.sh
```

This will download and setup the Lab Guide and tools for the class.

This is intended to reduce initial VM download size, make it easy for students to hit the ground running, control tool versions, and permit dynamic updating of the course material.

That's it!

Now shutdown the VMs and wait for class to begin.

</details>

## Waiting is hard

If you're looking for something to fill the time before class, here are some [InfoSec related recordings](https://ridgebackinfosec.com/recordings/) you can check out.

See y'all at the start of class!
