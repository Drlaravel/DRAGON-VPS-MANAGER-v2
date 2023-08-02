## ◇────── DRAGON VPS MANAGER v2 ───────◇

ㅤ



##

**_⚠️ New version changes ⚠️_**

<p align="left"> 
  The most important change in the source is its optimization in the consumption and use of server hardware
Below are the optimizations made to the SSH user management script for better performance, code readability, and user experience:
</p>
<details>
  <summary>Modularization of Code:</summary>
  
  1. Split the code into functions to improve readability, maintainability, and reusability.
  2. Created separate functions for specific tasks, such as checking user existence, removing a single user, removing all users, and OpenVPN user removal.
</details>

<details>
  <summary>Variable Naming:</summary>
  
  1. Used descriptive lowercase variable names to enhance code clarity and reduce the chance of conflicts with environment variables.
</details>

<details>
   <summary>Avoiding Uppercase Variable Names:</summary>
  
  1. Reserved uppercase variable names for environment variables and used lowercase names for custom variables.
</details>

<details>
   <summary>Simplified User Existence Check:</summary>
  
  1. Replaced complex conditional checks with the id command to determine if a user exists on the system.
</details>

<details>
   <summary>Improved Output Messages:</summary>
  
  1. Enhanced output messages for better clarity and user understanding.
  2. Standardized output formatting for a consistent user experience.
</details>

<details>
  <summary>Avoiding Redundant Outputs:</summary>
  
  1. Removed redundant or unnecessary echo statements to keep the output concise and focused.
</details>

<details>
  <summary>Error Handling:</summary>
  
  1. Included appropriate error handling to notify users about incorrect input or user-related issues.
</details>

<details>
  <summary>Consistent Commenting:</summary>
  
  1. Added comments to the code for better code documentation and understanding.
</details>

<details>
  <summary>User Interface Enhancement:</summary>
  
  1. Provided a sample main menu function (menu()) to be integrated into the script.
  2. The main menu should offer options for user actions and call the corresponding functions based on the user's selection.
</details>

##

 ㅤ

**_Update System Packages and Install SCRIPT_**

```
apt-get update -y; apt-get upgrade -y; wget https://raw.githubusercontent.com/Drlaravel/DRAGON-VPS-MANAGER-v2/main/hehe; chmod 777 hehe;./hehe

```

## ㅤ

**_Tutorial_**

<P>
<div class="div1">
<span><a href="https://player.vimeo.com/video/652289751"><img src="https://user-images.githubusercontent.com/83800532/144345002-c3ec5251-f723-4a81-bcaa-ad4579562218.png" alt=""width="50"height="50"/></a></span>
<span><a href="https://t.me/dragon_vps_manager/18"><img src="https://user-images.githubusercontent.com/83800532/143560346-101a5bbb-53c6-4d1d-90c9-364c3355a6b7.png" alt=""width="50"height="50"/></a></span>
</div>
</P>


## ㅤ

**_Screenshots_**

<details>
  <summary><p><b>Click To View [Terminal] </b><div class="div0"> <span><a href=""><img src="https://user-images.githubusercontent.com/83800532/143572065-ca450924-e72b-4041-ab31-3798618973f4.png" alt=""width="30"height="30"/><span><a href=""><img src="https://user-images.githubusercontent.com/83800532/144479843-ab04c6b5-9514-4863-b714-a1b391f42b27.png" alt=""width="30"height="30"/></a></span></p></summary></div>
<br/>

<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/dragon_ss_1.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/dragon_ss2.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/dragon_ss_3.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/dragon_ss_4.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/dragon_vps_5.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/dragon_ss_6.png" alt=""/></span></p>
</details>

<details>
  <summary><p><b>Click To View [Telegram Bot]</b><div class="div0"> <span><a href=""><img src="https://user-images.githubusercontent.com/83800532/143572065-ca450924-e72b-4041-ab31-3798618973f4.png" alt=""width="30"height="30"/><span><a href=""><img src="https://user-images.githubusercontent.com/83800532/143560346-101a5bbb-53c6-4d1d-90c9-364c3355a6b7.png" alt=""width="30"height="30"/></a></span></p></summary></div>
<br/>

<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/ss4.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/ss3.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/ss1.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/ss2.png" alt=""/></span></p>
<p><span><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/Screenshot%20(41).png" alt=""/></span></p>
</details>

## ㅤ

**_Based on_**

 <p>    
<div class="div1">
  <span><a href=""><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/icons8-linux.gif?raw=true" alt=""width="50"height="50"/></a></span>
  <span><a href=""><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/icons8-internet.gif?raw=true" alt=""width="50"height="50"/></a></span>
  <span><a href=""><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/ubuntu.gif?raw=true" alt=""width="50"height="50"/></a></span>
  <span><a href=""><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/icons8-ssh-48.png?raw=true" alt=""width="50"height="50"/></a></span>
  <span><a href=""><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/terminal2.gif?raw=true" alt=""width="50"height="50"/></a></span>
  <span><a href="https://github.com/NT-GIT-HUB/VPS-MANAGER-1.0"><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/business-3d-browser-1.png?raw=true" alt=""width="50"height="50"/></a></span>
  <span><a href=""><img src="https://github.com/januda-ui/januda-ui/blob/main/icons/clip-internet-security.png?raw=true" alt=""width="50"height="50"/></a></span>
</div>
 </p>
 
## ㅤ

**_Licence_**

[![License](https://www.gnu.org/graphics/gplv3-127x51.png)](LICENSE)
