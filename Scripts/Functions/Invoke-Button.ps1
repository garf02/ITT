function Invoke-Button {

    Param ([string]$debug)

    # debug
    #Write-Host $debug

    Switch -Wildcard ($debug){

        "installBtn" {Invoke-Install $debug}
        "applyBtn" {Invoke-ApplyTweaks $debug}
        "taps" {ChangeTap $debug}
        "load" {LoadJson $Button}
        "save" {SaveItemsToJson $debug}
        "about" {About $debug}
        "category" {FilterByCat($sync.category.SelectedItem.Content) $debug}
        "mas" {Start-Process ("https://github.com/massgravel/Microsoft-Activation-Scripts") $debug}
        "idm" { Start-Process ("https://github.com/WindowsAddict/IDM-Activation-Script") $debug}
        "dev" { About $Button}
        "deviceManager" {Start-Process devmgmt.msc $debug}
        "appsfeatures" {Start-Process ms-settings:appsfeatures $debug}
        "sysinfo" {Start-Process msinfo32.exe; dxdiag.exe; $debug}
        "poweroption" {Start-Process powercfg.cpl $debug}
        "services" {Start-Process services.msc $debug}
        "network" {Start-Process ncpa.cpl $debug}
        "taskmgr" {Start-Process taskmgr.exe $debug}
        "diskmgmt" {Start-Process diskmgmt.msc $debug}
        "darkOn" { Switch-ToDarkMode $debug }
        "darkOff" { Switch-ToLightMode $debug }
        "searchInput" {Search; $sync['window'].FindName('category').SelectedIndex = 0; $sync['window'].FindName('apps').IsSelected = $true; $debug }
    }
}