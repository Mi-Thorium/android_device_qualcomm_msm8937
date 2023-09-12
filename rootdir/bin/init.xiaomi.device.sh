#!/vendor/bin/sh

case "$(cat /sys/firmware/devicetree/base/model)" in
	"Qualcomm Technologies, Inc. MSM8937-PMI8950 QRD SKU1 DVT1")
		# Audio
		setprop vendor.audio.mixer_xml.path /odm/etc/mixer_paths_qrd_sku1.xml
		setprop vendor.audio.platform_info_xml.path /odm/etc/audio_platform_info_intcodec.xml
		;;
esac

exit 0
