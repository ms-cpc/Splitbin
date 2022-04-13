@echo off
:: Demo for splitting a bin file
echo Making NAND...
:: Selecting Begining Sector 55384 for 9048 sectors
dd if=%1 of=%1-NAND.bin bs=55384 count=9048
::MMC
Echo Making MMC
::Creating the remaider as MMC bin, start at the same sector but skip the 9048 bytes taken out of the bin
dd if=%1 of=%1-MMC.bin bs=55384 skip=9048
