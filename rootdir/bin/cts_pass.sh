#!/system/bin/sh

copyprop() {
    p="$(getprop "$2")"
    if [ "$p" ]; then
        resetprop "$1" "$(getprop "$2")"
    fi
}

copyprop ro.build.device ro.vendor.build.device
copyprop ro.system.build.fingerprint ro.vendor.build.fingerprint
copyprop ro.bootimage.build.fingerprint ro.vendor.build.fingerprint
copyprop ro.build.fingerprint ro.vendor.build.fingerprint
copyprop ro.build.device ro.vendor.product.device
copyprop ro.product.system.device ro.vendor.product.device
copyprop ro.product.device ro.vendor.product.device
copyprop ro.product.system.device ro.product.vendor.device
copyprop ro.product.device ro.product.vendor.device
copyprop ro.product.system.name ro.vendor.product.name
copyprop ro.product.name ro.vendor.product.name
copyprop ro.product.system.name ro.product.vendor.device
copyprop ro.product.name ro.product.vendor.device
copyprop ro.system.product.brand ro.vendor.product.brand
copyprop ro.product.brand ro.vendor.product.brand
copyprop ro.product.system.model ro.vendor.product.model
copyprop ro.product.model ro.vendor.product.model
copyprop ro.product.system.model ro.product.vendor.model
copyprop ro.product.model ro.product.vendor.model
copyprop ro.build.product ro.vendor.product.model
copyprop ro.build.product ro.product.vendor.model
copyprop ro.system.product.manufacturer ro.vendor.product.manufacturer
copyprop ro.product.manufacturer ro.vendor.product.manufacturer
copyprop ro.system.product.manufacturer ro.product.vendor.manufacturer
copyprop ro.product.manufacturer ro.product.vendor.manufacturer
copyprop ro.build.version.security_patch ro.vendor.build.security_patch
copyprop ro.build.version.security_patch ro.keymaster.xxx.security_patch
resetprop ro.build.tags release-keys
resetprop ro.boot.vbmeta.device_state locked
resetprop ro.boot.verifiedbootstate green
resetprop ro.boot.flash.locked 1
resetprop ro.boot.veritymode enforcing
resetprop ro.boot.warranty_bit 0
resetprop ro.warranty_bit 0
resetprop ro.debuggable 0
resetprop ro.secure 1
resetprop ro.build.type user
resetprop ro.build.selinux 0

resetprop ro.adb.secure 1
setprop ctl.restart adbd