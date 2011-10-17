# Script taken from Imoseyon and modified by LorD CLockaN #

make -j8 ARCH=arm CROSS_COMPILE=$CCOMPILER EXTRA_AFLAGS='-mfpu=vfpv3 -ftree-vectorize -floop-interchange -floop-strip-mine -floop-block';


cp arch/arm/boot/zImage ../finished/sense/;
cp drivers/net/wireless/bcm4329_204/bcm4329.ko ../finished/sense/;
cp drivers/net/tun.ko ../finished/sense/;
cp fs/cifs/cifs.ko ../finished/sense/;
#cp drivers/staging/zram/zram.ko ../finished/;
#cp lib/lzo/lzo_compress.ko ../finished/;
cp arch/arm/mach-msm/qdsp5v2_1x/qc_pcm_in.ko ../finished/sense/;
cp drivers/net/kineto_gan.ko ../finished/sense/;

echo "COMPILING FINISHED!!!";
read;
alias make='make -j4 ARCH=arm CROSS_COMPILE=$CCOMPILER'
make clean

