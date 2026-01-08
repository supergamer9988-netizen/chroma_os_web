#!/bin/bash
# สคริปต์สำหรับรันใน Kiosk Mode บนเครื่องจริง

# 1. ปรับจูน Hardware
export DISPLAY=:0
xset s off
xset -dpms

# 2. เคลียร์ RAM
rm -f /tmp/chroma_os_shm

# 3. เริ่มระบบ
echo "Starting Chroma OS..."
cd /opt/chroma_os
./target/release/kernel &
KERNEL_PID=$!

# 4. Watchdog (เฝ้าระวังชีพจรสมอง)
while kill -0 $KERNEL_PID 2> /dev/null; do
    sleep 1
done

# 5. ถ้า Kernel ตาย ให้ Reboot
reboot
