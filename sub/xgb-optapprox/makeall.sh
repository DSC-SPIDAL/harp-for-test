
tagname=$1
if [ -z $tagname ] ; then
    tagname=unity
fi

echo "make $tagname"

make clean_all
make -j 24 USE_HARP=1 HARP_INCLUDE=/N/u/lc37/Project/cppHarp MPI_PATH=/N/u/lc37/Lib/openmpi_build USE_VTUNE=0 USE_SPLIT_PARALLELONNODE=1 USE_HALFTRICK_EX=1 USE_SPARSE_DMATRIX=0 USE_BLKADDR_BYTE=0 USE_MIXMODE=1 USE_DEBUG=0 DEBUG=0 TAGNAME=$tagname

#make -j 24 TAGNAME=$tagname USE_HALFTRICK=0 USE_SPLIT_PARALLELONNODE=1 USE_SPARSE_DMATRIX=0 USE_BLKADDR_BYTE=0 USE_VTUNE=0 USE_DEBUG=0 DEBUG=0 CXX=g++
#make -j 24 TAGNAME=$tagname USE_HALFTRICK=0 USE_SPLIT_PARALLELONNODE=1 USE_SPARSE_DMATRIX=1 USE_BLKADDR_BYTE=0 USE_VTUNE=0 USE_DEBUG=0 DEBUG=0 CXX=g++
#make -j 24 TAGNAME=$tagname USE_HALFTRICK=1 USE_SPLIT_PARALLELONNODE=1 USE_SPARSE_DMATRIX=0 USE_BLKADDR_BYTE=0 USE_VTUNE=0 USE_DEBUG=0 DEBUG=0 CXX=g++
#make -j 24 TAGNAME=$tagname USE_HALFTRICK=1 USE_SPLIT_PARALLELONNODE=1 USE_SPARSE_DMATRIX=1 USE_BLKADDR_BYTE=0 USE_VTUNE=0 USE_DEBUG=0 DEBUG=0 CXX=g++
#make -j 24 TAGNAME=$tagname USE_HALFTRICK=0 USE_SPLIT_PARALLELONNODE=1 USE_SPARSE_DMATRIX=0 USE_BLKADDR_BYTE=1 USE_VTUNE=0 USE_DEBUG=0 DEBUG=0 CXX=g++
#make -j 24 TAGNAME=$tagname USE_HALFTRICK=1 USE_SPLIT_PARALLELONNODE=1 USE_SPARSE_DMATRIX=0 USE_BLKADDR_BYTE=1 USE_VTUNE=0 USE_DEBUG=0 DEBUG=0 CXX=g++

