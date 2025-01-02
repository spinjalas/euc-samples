---
layout: default
title: UEM Samples
hide:
  #- navigation
  - toc
---

## Code Samples

This is an index of Code Samples within the UEM-Samples area.

Workspace ONE Scripts samples can be found [here](./scripts-index.md) with Workspace ONE Sensors samples found [here](sensors-index.md).

## Workspace ONE UEM Samples

| Sample Name | Summary | Link |
| --- | --- | ---:|
| Adobe Products | When deploying Adobe Creative Cloud (CC) products with Workspace ONE UEM, admins should strongly consider using the integrated munki functionality built into "Internal Apps."   By using Internal Apps, admins gain the benefit of code which already understands the unique nature of the Creative Cloud app packages and handles them appropriately.  That said, as a macOS administrator, there is still some manual work which must be done to deliver these Adobe CC packages successfully. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Adobe%20Products) |
| AppBlocker_WS1 | The included .pkg and .plist files can be uploaded directly to the Workspace ONE Adminsitrator Console, and pre-install and post-uninstall scripts can be configured to easily specify which applications (identified by their Bundle IDs) should not be launched.  If a specified application is launched, the user will receive an alert and the application process will be killed. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/AppBlocker_WS1) |
| Arctic Wolf Agent | Deploying Arctic Wolf Agent for macOS with Workspace ONE UEM | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Arctic%20Wolf%20Agent) |
| Example-DEPNotify |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Bootstrap%20Package/Example-DEPNotify) |
| Example-Santa_BlockChess |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Bootstrap%20Package/Example-Santa_BlockChess) |
| Example-SetWallpaper |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Bootstrap%20Package/Example-SetWallpaper) |
| WS1-DEPNotify-Standard |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Bootstrap%20Package/WS1-DEPNotify-Standard) |
| Bootstrap Package | The Bootstrap Package feature gives admins the ability to have their installer pkgs deployed to devices *immediately* after enrollment has completed. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Bootstrap%20Package) |
| Carbon-Black-Defense | Install the Carbon Black Defense agent via unattended installation using Workspace ONE UEM. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Carbon-Black-Defense) |
| Change Wallpaper - ChangeRevert | Scripts to change the desktop wallpaper. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Change%20Wallpaper%20-%20ChangeRevert) |
| CreateHubLogs | Deploy this pkg to a device through WS1 UEM in order to gather and send relevant WS1 Hub and MDM logs to the WS1 UEM Admin Console.  The logs will be stored in the **Content** section of the Admin Console, stored under a category named **macOS Logs** and under an Organization Group that you specify.  This pkg leverages preinstall and postinstall scripts in order to encrypt API credentials and pass them to the device without saving them locally in plaintext. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/CreateHubLogs) |
| CrowdStrike Falcon | Deploying CrowdStrike Falcon Agent for macOS with Workspace ONE UEM | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/CrowdStrike%20Falcon) |
| Forescout | Deploying Forescout SecureConnector for macOS with Workspace ONE UEM | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Forescout) |
| Google Chrome | Manage Google Chrome Settings as Supported by Google via Workspace ONE: | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Google%20Chrome) |
| Legacy App Catalog Webclip For All Docks | The App Catalog webclip is comprised of just a specific url for the device to retrieve the list of available applications. This package dynamically creates this url, and the webclip (.webloc file) and saves it to `/Users/Shared/VMware` with permissions readable by all users. It also places a global LaunchAgent to load on *every user's next login*, to run another script to place the webclip on the user's dock. Once the webclip is added to the dock, a runonce file is created at `~/.appcatalog_runonce` to prevent the script from running again and creating duplicate webclips on the dock. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Legacy%20App%20Catalog%20Webclip%20For%20All%20Docks) |
| Microsoft Edge | Manage Microsoft Edge Preferences/Settings via Workspace ONE: | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Microsoft%20Edge) |
| Microsoft Office 2016 Product Install Script | A script that downloads Microsoft Office 2016 for Mac installers from the Microsoft Office CDN and performs installation of each installer.   The script is a modified version of another publicly available script as attributed in the script source.  Cross-posted from the original sample posted to code.vmware.com. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Microsoft%20Office%202016%20Product%20Install%20Script) |
| Microsoft Office for Mac | Microsoft Office for Mac can be distributed in one of two ways:  App Store and non-Store (via Office.com downloads).  In general, Omnissa recommends deploying Microsoft Office from the Mac App Store (via device-based licensing through Apple Business Manager) unless any of the following apply: | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Microsoft%20Office%20for%20Mac) |
| Microsoft-Defender-ATP | If you want to distribute Microsoft Defender ATP for macOS via WorkspaceOne in an enterprise environment you need 2 plist at the end which you distribute via the custom settings in WS1 and which are located in the /Libray/Managed Preferences/.  On the one hand you need the onboarding info, which contains the license for Defender ATP, on the other hand you need the configuration settings. In addition you have to define the system extension policy, kernel extension policy and the privacy preferences. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Microsoft-Defender-ATP) |
| Mozilla Firefox | Firefox for Enterprise allows administrators to manage certain settings within the browser.  It also provides the flexibility for admins to better control the browser release cadence within their organization by adopting either the rapid release or the extended support release.   One item to note is that policy availability does differ between the two releases.   Policies for macOS are now deployed via a mobileconfig file (or via profile payloads in your MDM).  Be mindful of which policies you wish to deploy, as some are only available for the Extended Support Release (ESR) version of Firefox. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Mozilla%20Firefox) |
| Nessus Agent | Deploying Nessus Agent for macOS with Workspace ONE UEM | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Nessus%20Agent) |
| Netskope | Deploying Netskope Client for macOS with Workspace ONE UEM | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Netskope) |
| Pulse Secure | Deploying Pulse Secure for macOS with Workspace ONE UEM | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Pulse%20Secure) |
| SentinelOne | Install the SentinelOne agent via unattended installation using Workspace ONE UEM. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/SentinelOne) |
| SetScreenSaver | More granular configuration of screen saver settings can be done on macOS through scripting.  This script can be setup as a login script, which will reapply every time the end user logs into their device.  Alternatively, if you are looking to deploy one or more images to the device to configure as the screen saver, you can create a PKG file that will deploy the files and apply the configuration all in one go. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/SetScreenSaver) |
| Torii Browser Extension | Deploy the Torii Extension for various browsers on macOS. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Torii%20Browser%20Extension) |
| use-AD-Software-installation-GPO-for-silent-enrollment-into-Workspace-ONE-UEM | This script will alter the AirWatchAgent.msi to include the arguments and parameters for command line enrollment. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/use-AD-Software-installation-GPO-for-silent-enrollment-into-Workspace-ONE-UEM) |
| Xcode | Script to Configure/Setup xCode for Initial Run without needing Admin Credentials. Stores Local User as a Variable. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Apps/Xcode) |
| ChangeUser | DEP/ABM provides a mechanism for automatically creating a local macOS user account, based on enrollment user. However, no such mechanism exists for enrollment taking place outside of DEP/ABM. ChangeUser is a collection of scripts used for automatically renaming the local macOS user account, when DEP/ABM enrollment is not possible. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Custom%20Attributes/ChangeUser) |
| Creating_Lookup_Values_through_Custom_Attributes | When deploying any type of macOS script (ie: preinstall, postinstall, or a standalone script) through Workspace ONE, there may be situations where you need to programmatically reference user- or device-specific informations within the script itself.  Custom Attributes can be created to define this information in a way that can be looked up on each device within the script itself. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Custom%20Attributes/Creating_Lookup_Values_through_Custom_Attributes) |
| Kernel Extensions Custom Attributes | This shell script (kext-ca.sh) generates an array of 3rd-party loaded Kernel Extensions and writes each kernel extension ID as a Custom Attribute in the local macOS CustomAttributes plist.   This information is posted by the agent back to the AirWatch console.   Admins can then view the list of custom attributes at Devices > Staging & Provisioning > Custom Attributes > List View.   Additionally, admins can filter for the kernel extensions ("com.") and export the list for use in populating the Kernel Extensions payload. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Custom%20Attributes/Kernel%20Extensions%20Custom%20Attributes) |
| McAfee | These custom attributes can be used to retrieve information from clients running McAfee Endpoint Security/Protection. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Custom%20Attributes/McAfee) |
| Application-Update-with-a-deferral-screen | This is a sample workflow to target application updates to enrolled devices with a deferral screen. This also includes a sensor to target newly enrolled devices and a script to Create Deferral screen. Import this file on UEM Freestyle List view and allow scripts & sensors while importing. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Freestyle/Application-Update-with-a-deferral-screen) |
| macOS-Major-Updates---Freestyle-Orchestrator-Workflow | This is a sample workflow to manage macOS OS Updates. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Freestyle/macOS-Major-Updates---Freestyle-Orchestrator-Workflow) |
| Windows-Onboarding-with-Freestyle-Workflows | This is a sample workflow to onboard Windows desktops with a complex sequence. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Freestyle/Windows-Onboarding-with-Freestyle-Workflows) |
| product_app_deployment_automation | The tool provides an example of how the product deployment APIs of Workspace ONE UEM can be used for Android app deployment. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/ProductProvisioning/product_app_deployment_automation) |
| iOS | This section of the **EUC-samples** repository contains samples relating to Custom Profiles (snippets) which can be used in the "Custom Settings" or "Custom XML" payload in Workspace ONE UEM for iOS management. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/iOS) |
| Apple Enterprise Connect |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/macOS/Apple%20Enterprise%20Connect) |
| Block macOS Major Update |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/macOS/Block%20macOS%20Major%20Update) |
| CIS Benchmarks |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/macOS/CIS%20Benchmarks) |
| Microsoft Office 2016 |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/macOS/Microsoft%20Office%202016) |
| macOS | This section of the **EUC-samples** repository contains samples relating to profile snippets which can be used in the "Custom Settings" or "Custom XML" payload in Workspace ONE UEM for macOS management.  Custom XML samples are typically used to manage key-value pairs in macOS preference domains.  For more information on Custom XML, refer to [Custom XML Preferences - Omnissa EUC Blog](https://blogs.Omnissa.com/euc/2017/06/xml-preferences.html) and the [Custom XML Template](https://github.com/euc-oss/euc-samples/blob/master/macOS-Samples/CustomXMLProfiles/CustomXMLTemplate.md). | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/macOS) |
| AirWatch Service Lockdown | Prevent end users from changing the AirWatch service properties on their devices with a Windows Desktop Custom Settings Profile. For devices that already have local changes, the profile resets the device to the default values and locks those settings from further changes. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/AirWatch%20Service%20Lockdown) |
| Chrome ADMX | ADMX-backed policies were introduced starting in Windows 10 version 1703, however you should stick to the latest version in order to have support for all of the policies. Microsoft allowed ADMX-backed policies to be deployed using CSPs, this sample will show you how to deploy the Chrome ADMX template (easily be modified to support any other ADMX template). As well as push out ADMX-backed Chrome policies to the device once the ADMX template is installed. Please reference the resources below to figure out what value (format) needs to go inside of the data tag. This varies depending on the element type such as: text, List, Enum, MultiText, No Elements, etc. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Chrome%20ADMX) |
| Clean PC | The [CleanPC CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/cleanpc-csp) is used to remove usr-installed and pre-installed apps, with the ability to either retain user data or completely remove user data. This CSP was added in Windows 10 1703. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Clean%20PC) |
| Firewall Examples | This folder has a sample configurations that will apply a firewall profile or custom firewall rules for an application or service on a Windows 10 Desktop for versions 1709 and above. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Firewall%20Examples) |
| Internet Explorer | This is a sample of some of the Internet Explorer CSPs which you can deploy to your devices. To deploy this sample, navigate to **Devices & User > Profile > Add > Windows > Desktop > Device > Custom Settings**, then copy and paste the SyncML into the box and publish the profile. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Internet%20Explorer) |
| Kiosk Mode | The AssignedAccess CSP is used to enable single app kiosk mode on Windows 10 devices for Universal Windows Platform (UWP) apps. For Win32 apps you can use Shell Launcher; more information can be found in the Additional Resources section below. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Kiosk%20Mode) |
| MDM over GPO | This policy allows IT admins to control which policy will be used when both MDM policy and the equivalent Group Policy are set on the device. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/MDM%20over%20GPO) |
| Microsoft Office | The [Office CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/office-csp) is used to install the Office on a device via the Office Deployment Tool. This CSP was added in Windows 10 1703. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Microsoft%20Office) |
| Network Proxy | This folder has a sample configuration that will apply a machine wide network proxy on a Windows 10 Desktop for versions 1703 (Creators update) and above using an Auto-config PAC Script URL. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Network%20Proxy) |
| Power | The Power CSP and other ADMX-backed policies were introduced starting in Windows 10 version 1709, however you should stick to the latest version in order to have support for all of the policies. Microsoft allowed ADMX-backed policies to be deployed using CSPs and have added built-in support for Internet Explorer. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Power) |
| Start Menu Layout | The StartLayout CSP is used to customized the Start Menu Layout of a device for a uniform look and feel for all of your corporate devices. Once customized users cannot modify the Start Menu. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Start%20Menu%20Layout) |
| Surface Hub | This folder has mutiple configurations that can be applied to SurfaceHubs that will help manage them through OMA-DM via AirWatch. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Surface%20Hub) |
| Telemetry | The [Telemetry CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) is used to set the level of telemetry data sent. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Telemetry) |
| Unified Write Filter | The Unified Write Filter feature is a powerful feature on Windows which is designed to protect the drives on a system by reducing the number of write cycles that the drive goes through during use. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Unified%20Write%20Filter) |
| Windows Update for Business | These sample configuration files are to be used together, deploying one Quality Update (QU) Ring profile, one Feature Update (FU) Ring profile and one Delivery Optimization profile. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows/Windows%20Update%20for%20Business) |
| Windows | This section of the **EUC-samples** repository contains samples relating to Custom Profiles (snippets) which can be used in the "Custom Settings" or "Custom XML" payload in Workspace ONE UEM for Windows management. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Profiles/Windows) |
| Scripts | These Workspace ONE Script samples contain command lines or scripts that can be used in a **Resources > Scripts** payload to execute commands on managed Windows 10 or macOS devices and report execution status back to Workspace ONE. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Scripts) |
| Sensors | These Workspace ONE Sensor samples contain PowerShell, BASH and Shell scripts that can be used in a **Resources > Sensors** payload to report back information about the Windows, macOS or Linux device back to Workspace ONE. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Sensors) |
| Programatically-delete-Google-Play-entitlements | This script programmatically deletes Google EMM Entitlements for all devices at a target WS1 Organization Group. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Android/Programatically-delete-Google-Play-entitlements) |
| Add Tag to Supervised Device | This Poweshell script make a REST API call to an AirWatch server.  This particular script is used to build an Assignment Group for all supervised devices.  There is currently no filter in the console | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Add%20Tag%20to%20Supervised%20Device) |
| App Upload | This script is a basic example of using uploadchunk apis to upload larger apps to the Workspace ONE UEM console. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/App%20Upload) |
| Bulk Device Commands | This Powershell script allows you to issue commands to groups of devices in bulk that are available via API but not currently in the console. Commands such as Device Lock or Enterprise Reset can be issued against a targeted group of devices to speed up Admin tasks. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Bulk%20Device%20Commands) |
| Create Smart Group | This script can be used to create a smart group from a CSV file in Workspace ONE UEM. There is one way the script is designed to be executed, and that is by directly calling the script and entering environment and smart group details when prompted. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Create%20Smart%20Group) |
| Device Details | Sample script for VMware Workspace ONE UEM REST API | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Device%20Details) |
| Device Query | This script is useful for initiating a query from the client application to the Workspace ONE UEM application server (Device Services). There are two ways in which the script can be executed; ad-hoc with a menu, and on a recurring schedule without a menu. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Device%20Query) |
| Email Templates | These email templates can be used as a starting point to create custom email notifications in Workspace ONE UEM. Where the basic ones provide the users with alot of information, it might be a better idea to incorporate your own company styling and languague. By doing this, the users will recognize and understand the emails. Whereas the default emails templates might come across as spam and/or phishing to some users. Included are templates for iOS Update Notifications and Compliancy Violations. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Email%20Templates) |
| simple_node_api |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Excel%20Add-In/simple_node_api) |
| Excel Add-In | This Add-In allows you to access your Workspace ONE UEM API from within Excel | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Excel%20Add-In) |
| testing |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Mobile%20CICD%20Script/testing) |
| Mobile CICD Script | The tool provides an example of how the application deployment APIs of Workspace ONE UEM can be used for iOS and Android apps. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Mobile%20CICD%20Script) |
| Pagination Recursion Sample | This sample shows how you can use recursion to query all records in paginated Workspace ONE UEM APIs | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Pagination%20Recursion%20Sample) |
| Sync Devices | This script is useful for initiating a sync from the client application to the Workspace ONE UEM application server (Device Services). There are two ways in which the script can be executed; ad-hoc with a menu, and on a recurring schedule without a menu. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/Sync%20Devices) |
| UEM API Event Notifications | Example c# app calling Workspace ONE UEM APIs. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/UEM%20API%20Event%20Notifications) |
| UEM Content Sample | This script shows how to use the Workspace ONE REST API calls to download content from Content repositories.  This can be used as an example of the information required to dowload content. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/UEM%20Content%20Sample) |
| UEM Maintenence Script | This script connects to your VMware Workspace ONE UEM environment and can get and delete duplicate devices, stale devices, or problematic devices (devices with invalid serials). It can also get duplicate user accounts. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Generic/UEM%20Maintenence%20Script) |
| Bulk e-Sim Activation for iOS | Cellular devices from Apple traditionally required a small, physical Subscriber Identity Module (SIM) card to enable service on a cellular carrier.  The SIM was typically pre-inserted by the carrier, but could be physically swapped if necessary.  Modern devices now include an eSIM, which is a chip built into the device that performs the same function but consumes less internal space.  eSIMs are also more flexible, as it supports any carrier supporting the eSIM standard and eliminates the need for physically touching/modifying the device. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/iOS/Bulk%20e-Sim%20Activation%20for%20iOS) |
| app_and_process_details | This is a helper for the Workspace ONE Intelligent Hub for macOS feature for blocking apps and processes. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/app_and_process_details) |
| Baselines | Utilizing the macOS Security Compliance Project (mSCP) to enforce baselines on macOS devices using Workspace ONE. We will review briefly how to use the mSCP to generate the desired baseline and then detail the procedure to deploy this configuration using Workspace ONE. We will close by reviewing deployment options for Freestyle-enabled and non-Freestyle-enabled environments. Here is a high level overview: | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/Baselines) |
| CustomAttributesToSensorsMigration | This script can be used to migrate existing Custom Attributes profiles that are configured in a Workspace ONE UEM environment to a Sensor configured in the same environment. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/CustomAttributesToSensorsMigration) |
| Sensors for Reporting |  | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/macOS%20Updater%20Utility/Sensors%20for%20Reporting) |
| macOS Updater Utility | The macOS Updater Utility (mUU) keeps your Mac device fleet up to date by prompting users to update to your specified version of macOS. If necessary, mUU will force users to update their OS. mUU utilizes [Apple's MDM Commands](https://developer.apple.com/documentation/devicemanagement/scheduleosupdatecommand/command/updatesitem) to download and install updates via the Workspace ONE UEM API. mUU will allow you to specify max number of deferrals, deferral grace period, and more! | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/macOS%20Updater%20Utility) |
| macOS_Update_Helper | This package can be used to provide more flexibility around deploying macOS updates to devices through Workspace ONE UEM, as well as to provide information and feedback to the user regarding the progress of the update.  The package can be customized through the use of a Custom Settings profile in Workspace ONE UEM.  It leverages [DEPNotify](https://gitlab.com/Mactroll/DEPNotify/blob/master/README.md) to act as a UI for the end user. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/macOS_Update_Helper) |
| Archive | This Tools is deprecated. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/Migration-Tool/Archive) |
| Migration-Tool | This tool provides a better user experience when migrating macOS devices to Workspace ONE. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/Migration-Tool) |
| Using-Google-Santa-to-blacklist-apps-on-macOS | Uses Google Santa to blacklist applications on a macOS machine. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/Using-Google-Santa-to-blacklist-apps-on-macOS) |
| Workspace ONE macOS App Analyzer | The Workspace ONE macOS App Analyzer will determine any Privacy Permissions, Kernel Extensions, or System Extensions needed by an installed macOS application, and can be used to automatically create profiles in Workspace ONE UEM to whitelist those same settings when deploying apps to managed devices. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/Workspace%20ONE%20macOS%20App%20Analyzer) |
| Workspace ONE mobileconfig Importer | The Workspace ONE mobileconfig Importer gives you the ability to import existing mobileconfig files directly into a Workspace ONE UEM environment as a Custom Settings profile, import app preference plist files in order to created managed preference profiles, and to create new Custom Settings profiles from scratch. When importing existing configuration profiles, the tool will attempt to separate each PayloadContent dictionary into a separate payload for the Workspace ONE profile. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/macOS/Workspace%20ONE%20mobileconfig%20Importer) |
| Create, Delete, Modify Device User or Admin Accounts | These sets of sample BATCH files will add and delete users and create and downgrade admins. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Create,%20Delete,%20Modify%20Device%20User%20or%20Admin%20Accounts) |
| Deploy LGPO.exe | This Powershell script allows you to download LGPO.exe from the MSFT website and upload it as a Managed App to a specified WS1 Organization Group. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Deploy%20LGPO.exe) |
| Disable WWAN - Limit Telecom Usage | Enable or Disable Wireless LAN and Limit Telco Usage | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Disable%20WWAN%20-%20Limit%20Telecom%20Usage) |
| Drop Ship Provisioning | These Drop Ship Provisioning for VMware Workspace ONE samples contain PowerShell command lines or Batch scripts that can be used in the configuration file (unattend.xml) generation step in the Workspace ONE UEM Console. Navigate to **Devices > Lifecycle > Staging > Windows**, select **New** and you can leverage these samples in the **Additional Synchronous Commands** OR **First Logon Commands** fields. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Drop%20Ship%20Provisioning) |
| Enable Kerberos and Add Sites to Trusted Zone | This sample BATCH script will enable Kerberos on a Windows device, enable sending authentication (domain credentials) to trusted sites which you have added into the trusted zones in this script. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Enable%20Kerberos%20and%20Add%20Sites%20to%20Trusted%20Zone) |
| Enrollment Troubleshooting Script | This Powershell script allows you to quickly check a device for the required services and network connections required for MDM enrollment. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Enrollment%20Troubleshooting%20Script) |
| Import Group Policy | This set of scripts will guide you on how to export and import group policy configurations from devices into AirWatch to push out to managed devices using AirWatch's Product Provisioning. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Import%20Group%20Policy) |
| Maintain Workspace ONE Co-existence with SCCM Compliance Rule | How you can use an SCCM compliance baseline to check for valid enrollment and if it fails, run a script to remove old agent, repair WMI, re-enroll automatically. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Migration%20and%20Re-Enrollment/Maintain%20Workspace%20ONE%20Co-existence%20with%20SCCM%20Compliance%20Rule) |
| UEM Migration | The Migration script will help move a device between Workspace ONE UEM environments. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Migration%20and%20Re-Enrollment/UEM%20Migration) |
| Removable Drive Encryption Policy | This script disables writes to removable drives on a Windows 10 Desktop. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Removable%20Drive%20Encryption%20Policy) |
| Software Distribution Templates | A running list of validated apps (Win32) deployed using Software Distribution in the AirWatch console. We will update this list weekly with new entries. If you would like to have an app added please send [jnegron@vmware.com](mailto:jnegron@vmware.com) all of the app's information, it will be validated then added. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Software%20Distribution%20Templates) |
| UEM Managed VDI Gold Master | This powershell script allows you to easily use Workspace ONE Unified Endpoint Management (UEM) to bring a Gold Master image up the required state. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/UEM%20Managed%20VDI%20Gold%20Master) |
| Windows 10 Automated Setup Media | This script creates automated Windows 10 setup on bootable USB media. It takes any Windows 10 ISO, formats USB to support UEFI NTFS booting, and places autounattend.xml in the root of the drive in order to make it a zero touch setup process. | [Link](https://github.com/euc-oss/euc-samples/tree/main/UEM-Samples/Utilities%20and%20Tools/Windows/Windows%2010%20Automated%20Setup%20Media) |