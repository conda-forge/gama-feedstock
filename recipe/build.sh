#!/bin/bash

export CFLAGS="$CFLAGS -I$PREFIX/include -L$PREFIX/lib"
export CPPFLAGS="$CPPFLAGS -I$PREFIX/include"

./configure --prefix=$PREFIX --enable-expat_1_1

make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install
