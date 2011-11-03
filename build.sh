# Script taken from Imoseyon and modified by LorD CLockaN #

make -j8 ARCH=arm CROSS_COMPILE=$CCOMPILER EXTRA_AFLAGS='-mfpu=vfpv3 -ftree-vectorize -floop-interchange -floop-strip-mine -floop-block';


cp arch/arm/boot/zImage ../finished/vivo/;
cp drivers/net/wireless/bcm4329_204/bcm4329.ko ../finished/vivo/;
cp drivers/net/tun.ko ../finished/vivo/;
cp fs/cifs/cifs.ko ../finished/vivo/;
#cp drivers/staging/zram/zram.ko ../finished/;
#cp lib/lzo/lzo_compress.ko ../finished/;
cp arch/arm/mach-msm/qdsp5v2_1x/qc_pcm_in.ko ../finished/vivo/;
cp drivers/net/kineto_gan.ko ../finished/vivo/;
cp fs/nls/nls_utf8.ko ../finished/vivo/;

echo "COMPILING FINISHED!!!";
read;
alias make='make -j8 ARCH=arm CROSS_COMPILE=$CCOMPILER'
make clean

