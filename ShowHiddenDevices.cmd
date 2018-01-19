@pushd "%~dp0"
@title Show hidden devices
@set devmgr_show_nonpresent_devices=1
@echo Now Click on View - Show hidden devices (in the Device manager)
@start "" /wait devmgmt.msc