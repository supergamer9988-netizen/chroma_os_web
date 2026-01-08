#!/bin/sh
echo "Assembling Chroma OS Disk Image..."

# สร้าง ISO ด้วย GRUB Rescue (รองรับทั้ง Legacy BIOS และ UEFI)
grub-mkrescue -o /output/chroma_os.iso /iso_build/isofiles

echo "ISO Generated Successfully."
# เปลี่ยน Owner ไฟล์ให้เป็น User ปัจจุบัน (แก้ปัญหา Permission ใน Linux/Mac)
chmod 777 /output/chroma_os.iso
