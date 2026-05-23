# TWRP device tree for Xiaomi REDMI Note 15 Pro 4G (charoite)

# Version 0.1

## Detected device info

- Device: `charoite`
- Product: `charoite_global`
- Model: `25100RA69G`
- Market name: `REDMI Note 15 Pro`
- Platform: `mt6789`
- Build: `OS3.0.302.0.WPFMIXM`
- A/B: yes
- Dynamic partitions: yes
- Boot header: v4
- Vendor boot header: v4
- Recovery ramdisk location: `vendor_boot`, fragment name `recovery`

## Build

```bash
. build/envsetup.sh
lunch twrp_charoite-eng
mka vendorbootimage -j$(nproc --all)
```

If your build tree does not support `vendorbootimage`, try:

```bash
mka bootimage -j$(nproc --all)
```

## Notes

`system_dlkm` exists in the stock fstab, but it is intentionally not added to
`BOARD_MAIN_PARTITION_LIST` because some twrp-12.1/minimal-manifest build cores
reject it as an invalid main partition name.
