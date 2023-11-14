echo "Starting to clone stuffs needed to build for taoyao"

currentDir=""

# Vendor
currentDir="vendor/xiaomi/taoyao"
if [ ! -d $currentDir ]; then
  echo "Cloning vendor tree"
  git clone https://github.com/xiaomi-taoyao/vendor_xiaomi_taoyao.git vendor/xiaomi/taoyao
else
  comeback=$(pwd)
  cd vendor/xiaomi/taoyao
  echo "Pulling last changes from vendor tree"
  git pull
  cd $comeback
fi

# Kernel
currentDir="device/xiaomi/taoyao-kernel"
if [ ! -d $currentDir ]; then
  echo "Cloning kernel tree"
  git clone https://github.com/xiaomi-taoyao/device_xiaomi_taoyao-kernel.git device/xiaomi/taoyao-kernel
else
  comeback=$(pwd)
  cd device/xiaomi/taoyao-kernel
  echo "Pulling last changes from kernel tree"
  git pull
  cd $comeback
fi

# Kernel
currentDir="kernel/xiaomi/sm8350"
if [ ! -d $currentDir ]; then
  echo "Cloning kernel header"
  git clone https://github.com/xiaomi-taoyao/kernel_xiaomi_sm8350.git kernel/xiaomi/sm8350
else
  comeback=$(pwd)
  cd kernel/xiaomi/sm8350
  echo "Pulling last changes from kernel header"
  git pull
  cd $comeback
fi

# Hardware Xiaomi
currentDir="hardware/xiaomi"
if [ ! -d $currentDir ]; then
  echo "Cloning Hardware Xiaomi"
  git clone https://github.com/xiaomi-taoyao/hardware_xiaomi.git hardware/xiaomi
else
  comeback=$(pwd)
  cd hardware/xiaomi
  echo "Pulling last changes from Hardware Xiaomi"
  git pull
  cd $comeback
fi

# Gapps
# echo "Cloning gapps"
# rm -rf vendor/gms && rm -rf vendor/gapps &&  git clone --depth=1 https://gitlab.com/vherawidatama/vendor_gms_mod.git vendor/gapps

# Camera
# echo "Cloning Leica Camera"
# git clone https://gitlab.com/vherawidatama/proprietary_vendor_xiaomi_camera.git -b topaz-leica vendor/xiaomi/camera
