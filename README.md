---

# **cd_mdt** - Custom Mobile Data Terminal (MDT) System

### **Author:** Thorough  
### **Version:** 1.0.0  
### **Game:** GTA V (FiveM)  
### **Repository:** [GitHub Link](https://github.com/OsoThoro/cd_mdt)  
### **Framework:** Standalone, Integrated with [cd_dispatch](https://docs.codesign.pro/paid-scripts/dispatch)

---

## **Description**
The **`cd_mdt`** resource is a custom-built Mobile Data Terminal (MDT) system integrated with **Codesign Dispatch (cd_dispatch)**. This resource allows police officers to handle dispatch notifications, manage their unit status, log reports, and handle criminal lookups through a user-friendly interface. It includes advanced logging and debugging options with highly modular code for future updates.

---

## **Features**
- **Dispatch Integration:** Direct integration with **cd_dispatch** to send and receive notifications of active crimes and incidents.
- **Officer Status Management:** Officers can update their status (e.g., available, busy, out of service) through the MDT.
- **Real-Time Logs:** Track and log dispatches and status changes both server-side and in a secured Discord channel (if configured).
- **Modular Configuration:** Easy to configure and modify with the `config.lua` file.
- **Debug Options:** Debug prints and secured Discord logging for error tracking, resource start-up, and function calls.
- **Customizable UI:** (Planned for future versions) An interface to view reports, past calls, and more.

---

## **Installation**
1. **Download & Installation:**
   - Clone or download the repository from [GitHub](https://github.com/OsoThoro/cd_mdt).
   - Place the **`cd_mdt`** folder in your **`resources`** folder on your server.

2. **Add to `server.cfg`:**
   - Open your **`server.cfg`** file and add the following line to ensure the resource is started:
     ```
     ensure cd_mdt
     ```

3. **Configure `config.lua`:**
   - Open **`config/config.lua`** and adjust the settings based on your server's needs.
   - **Webhooks:** Set up Discord webhooks in the `Config.Webhooks` section to log events like dispatches and errors.

---

## **Configuration**
The **`cd_mdt`** resource comes with a **`config.lua`** file where you can easily change various settings. 

```lua
-- Example of configurable options in config/config.lua

Config.DispatchCodes = {
    Robbery = '10-31',
    Burglary = '10-62',
    ShotsFired = '10-71',
    HitAndRun = '10-57',
}

Config.Debug = true -- Enable or disable debug prints
Config.DiscordWebhook = '' -- Your Discord webhook URL for error logging

-- Officer status settings
Config.OfficerStatuses = {
    Available = '10-8',
    Busy = '10-6',
    OutOfService = '10-7'
}

-- Webhook URLs for logs
Config.Webhooks = {
    DispatchLog = '', -- Dispatch log webhook URL
    ErrorLog = '',    -- Error log webhook URL
}
```

---

## **Usage**

### **Dispatch Integration**
You can trigger dispatch notifications directly from **cd_mdt** using the following function:

```lua
RegisterDispatch('Robbery', 'Robbery in progress at Legion Square')
```

This will trigger a **cd_dispatch** event and notify units of the crime.

### **Officer Status Update**
Officers can change their status (available, busy, out of service) through the MDT by calling the `UpdateOfficerStatus()` function:

```lua
UpdateOfficerStatus('Available') -- Change the officer's status to 'Available'
```

This status is logged and broadcast to the dispatch system.

---

## **Debugging and Logging**
- **Debug Mode:** Enable `Config.Debug = true` in the `config.lua` to see detailed debug prints in the console for easier troubleshooting.
- **Discord Webhooks:** Set up your Discord webhooks in the `Config.Webhooks` section to receive logs for dispatches and errors.

---

## **Developer Notes**

### **File Structure:**

```
cd_mdt/
├── client/
│   └── main.lua         # Client-side script for handling dispatch notifications and officer status updates
├── server/
│   ├── main.lua         # Server-side script for handling status changes and logging
│   └── discord_webhooks.lua # Script to handle Discord webhook logging
├── config/
│   └── config.lua       # Configuration settings for dispatch codes, officer statuses, debug options, and webhooks
├── fxmanifest.lua       # Manifest file for the resource
└── README.md            # Resource documentation
```

### **Exporting to Other Scripts**
If you want to trigger dispatch events from other scripts, use the following export example:

```lua
exports['cd_mdt']:RegisterDispatch('ShotsFired', 'Shots fired near Grove Street')
```

This export will trigger the dispatch system and notify all units.

---

## **Future Updates**
- Planned features include a full-fledged user interface for MDT, officer management, case filing, criminal lookup, and a dynamic real-time map.

---

## **Credits**
- **Author:** Thorough  
- **Repository:** [GitHub Link](https://github.com/OsoThoro/cd_mdt)  
- **Framework:** Standalone, integrated with [cd_dispatch](https://docs.codesign.pro/paid-scripts/dispatch)

---
