cd $1
aclocal -I.../autoconf-archive/m4   # Cache configure subroutines
autoreconf -fvi       # Generate the configure script, if needed
./configure # Optional, needed for choosing optional functionality
