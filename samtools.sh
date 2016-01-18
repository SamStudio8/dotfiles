cd $1
mkdir ../autoconf-archive
wget -O ../autoconf-archive/ax_with_htslib.m4 https://github.com/samtools/samtools/files/62424/ax_with_htslib.m4.txt
aclocal -I.../autoconf-archive/m4   # Cache configure subroutines
autoreconf -fvi       # Generate the configure script, if needed
./configure # Optional, needed for choosing optional functionality
