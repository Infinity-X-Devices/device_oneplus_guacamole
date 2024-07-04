echo "Cloning sm8150-Common Tree"
git clone https://github.com/ankitstha/device_oneplus_sm8150-common.git -b infinity device/oneplus/sm8150-common --depth=1
echo ""

echo "Cloning kernel tree"
git clone https://github.com/ankitstha/Neptune_kernel_sm8150_oneplus.git -b inline-erofs kernel/oneplus/sm8150 --depth=1
echo ""

echo "Cloning Hardware"
git clone https://github.com/ankitstha/hardware_oneplus.git -b fourteen hardware/oneplus --depth=1
echo ""

echo "Cloning Vendor blobs"
git clone https://github.com/yaap/vendor_oneplus_guacamole.git -b fourteen vendor/oneplus/guacamole --depth=1
git clone https://github.com/yaap/vendor_oneplus_sm8150-common.git -b fourteen vendor/oneplus/sm8150-common --depth=1
echo ""

# Qcom-Caf components
echo "Cloning Qcom-Caf components"
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/sm8150/media
rm -rf vendor/qcom/common
rm -rf device/qcom/common
rm -rf vendor/qcom-opensource/core-utils
rm -rf device/qcom/qssi
rm -rf frameworks/opt/telephony
rm -rf prebuilts/clang/host/linux-x86
git clone https://github.com/yaap/hardware_qcom-caf_sm8150_audio.git -b fourteen hardware/qcom-caf/sm8150/audio --depth=1
git clone https://github.com/yaap/hardware_qcom-caf_sm8150_display.git -b fourteen hardware/qcom-caf/sm8150/display --depth=1
git clone https://github.com/yaap/hardware_qcom-caf_sm8150_media.git -b fourteen hardware/qcom-caf/sm8150/media --depth=1
git clone https://github.com/ThankYouMario/proprietary_vendor_qcom_common.git -b uvite vendor/qcom/common --depth=1
git clone https://github.com/AOSPA/android_device_qcom_common.git -b uvite device/qcom/common --depth=1
git clone https://github.com/janakniraula/android_vendor_qcom-opensource_core-utils -b uvite vendor/qcom/opensource/core-utils --depth=1
git clone https://github.com/AOSPA/android_device_qcom_qssi -b uvite device/qcom/qssi --depth=1
git clone https://github.com/yaap/frameworks_opt_telephony.git -b fourteen frameworks/opt/telephony --depth=1
git clone https://gitlab.com/yaosp/prebuilts_clang_host_linux-x86.git -b fourteen prebuilts/clang/host/linux-x86 --depth=1
echo ""