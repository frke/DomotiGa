#!/bin/sh
# restore symlinks between DomotiGa3 and DomotiGaServer3

echo "This script will create symbolic links between shared code of DomotiGa3 and DomotiGaServer3.\nPress CTRL-C to abort or ENTER to continue"
read dummy

cd ../DomotiGaServer3/.src/
cp Main.module Main.module.back
rm *.class
rm *.module
cp Main.module.back Main.module
ln -s ../../DomotiGa3/.src/Astro.module
ln -s ../../DomotiGa3/.src/AVControl.module
ln -s ../../DomotiGa3/.src/Bluetooth.module
ln -s ../../DomotiGa3/.src/Bwired.module
ln -s ../../DomotiGa3/.src/CallerID.module
ln -s ../../DomotiGa3/.src/CAsterisk.class
ln -s ../../DomotiGa3/.src/CCUL.class
ln -s ../../DomotiGa3/.src/CCTX35.class
ln -s ../../DomotiGa3/.src/CCurrentCost.class
ln -s ../../DomotiGa3/.src/CDenon.class
ln -s ../../DomotiGa3/.src/CDomotica.class
ln -s ../../DomotiGa3/.src/CDSC.class
ln -s ../../DomotiGa3/.src/CELVMAX.class
ln -s ../../DomotiGa3/.src/CEIB.class
ln -s ../../DomotiGa3/.src/CEZcontrol.class
ln -s ../../DomotiGa3/.src/CFritzBox.class
ln -s ../../DomotiGa3/.src/CGPS.class
ln -s ../../DomotiGa3/.src/CHomeMatic.class
ln -s ../../DomotiGa3/.src/CIPort.class
ln -s ../../DomotiGa3/.src/CIRMan.class
ln -s ../../DomotiGa3/.src/CIRTrans.class
ln -s ../../DomotiGa3/.src/CIViewer.class
ln -s ../../DomotiGa3/.src/CJeeLabs.class
ln -s ../../DomotiGa3/.src/CK8055.class
ln -s ../../DomotiGa3/.src/CLEDMatrix.class
ln -s ../../DomotiGa3/.src/CMQTT.class
ln -s ../../DomotiGa3/.src/CMeteohub.class
ln -s ../../DomotiGa3/.src/CNcid.class
ln -s ../../DomotiGa3/.src/CLGTV.class
ln -s ../../DomotiGa3/.src/CLIRC.class
ln -s ../../DomotiGa3/.src/CTemp08.class
ln -s ../../DomotiGa3/.src/COpenTherm.class
ln -s ../../DomotiGa3/.src/COnkyo.class
ln -s ../../DomotiGa3/.src/COWFS.class
ln -s ../../DomotiGa3/.src/COWW.class
ln -s ../../DomotiGa3/.src/CPLCBUS.class
ln -s ../../DomotiGa3/.src/CPlugwise.class
ln -s ../../DomotiGa3/.src/CPioneer.class
ln -s ../../DomotiGa3/.src/CPwrCtrl.class
ln -s ../../DomotiGa3/.src/CRFXComRX.class
ln -s ../../DomotiGa3/.src/CRFXComTX.class
ln -s ../../DomotiGa3/.src/CRFXComTRX.class
ln -s ../../DomotiGa3/.src/CRFXComxPL.class
ln -s ../../DomotiGa3/.src/CSharpTV.class
ln -s ../../DomotiGa3/.src/CSMS.class
ln -s ../../DomotiGa3/.src/CSmartMeter.class
ln -s ../../DomotiGa3/.src/CSqueezeServer.class
ln -s ../../DomotiGa3/.src/CTimerDelay.class
ln -s ../../DomotiGa3/.src/CTimerOnOff.class
ln -s ../../DomotiGa3/.src/CUPS.class
ln -s ../../DomotiGa3/.src/CVISCA.class
ln -s ../../DomotiGa3/.src/CWebServer.class
ln -s ../../DomotiGa3/.src/CTelnetServer.class
ln -s ../../DomotiGa3/.src/CWeeder.class
ln -s ../../DomotiGa3/.src/CXMLRPC.class
ln -s ../../DomotiGa3/.src/CXBMCxPL.class
ln -s ../../DomotiGa3/.src/CxPL.class
ln -s ../../DomotiGa3/.src/CxPLMsg.class
ln -s ../../DomotiGa3/.src/CYouLess.class
ln -s ../../DomotiGa3/.src/CZWave.class
ln -s ../../DomotiGa3/.src/Calendar.module
ln -s ../../DomotiGa3/.src/Devices.module
ln -s ../../DomotiGa3/.src/Digitemp.module
ln -s ../../DomotiGa3/.src/DNS.module
ln -s ../../DomotiGa3/.src/Energy.module
ln -s ../../DomotiGa3/.src/EventLoop.module
ln -s ../../DomotiGa3/.src/Events.module
ln -s ../../DomotiGa3/.src/GLatitude.module
ln -s ../../DomotiGa3/.src/HDDTemp.module
ln -s ../../DomotiGa3/.src/X10Cmd.module
ln -s ../../DomotiGa3/.src/Shell.module
ln -s ../../DomotiGa3/.src/JSON.module
ln -s ../../DomotiGa3/.src/Mail.module
ln -s ../../DomotiGa3/.src/Pachube.module
ln -s ../../DomotiGa3/.src/Ping.module
ln -s ../../DomotiGa3/.src/RRDTool.module
ln -s ../../DomotiGa3/.src/ServerStats.module
ln -s ../../DomotiGa3/.src/Sounds.module
ln -s ../../DomotiGa3/.src/TemperaturNu.module
ln -s ../../DomotiGa3/.src/TVGuide.module
ln -s ../../DomotiGa3/.src/Thermostat.module
ln -s ../../DomotiGa3/.src/Twitter.module
ln -s ../../DomotiGa3/.src/VideoServer.module
ln -s ../../DomotiGa3/.src/VoiceText.module