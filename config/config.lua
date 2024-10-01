Config = {}

-- Select the dispatch system to use ('cd_dispatch', 'another_dispatch', or 'standalone')
Config.DispatchSystem = 'cd_dispatch'  -- Default to cd_dispatch, but can be changed

-- Dispatch code settings
Config.DispatchCodes = {
    Robbery = '10-31',
    Burglary = '10-62',
    ShotsFired = '10-71',
    HitAndRun = '10-57',
}

-- Debug settings
Config.Debug = true
Config.DiscordWebhook = ''  -- Discord webhook URL for error logging

-- Officer status settings
Config.OfficerStatuses = {
    Available = '10-8',
    Busy = '10-6',
    OutOfService = '10-7'
}

-- Optional webhook settings for logs
Config.Webhooks = {
    DispatchLog = '',  -- Add webhook for dispatch logs
    ErrorLog = '',     -- Add webhook for error logs
}
