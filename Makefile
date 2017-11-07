.PHONY: cvmfs cvmfs-cc7 build all

all: cvmfs cvmfs-cc7

cvmfs:
	#(cd ./slc-base && make)
	#(cd ./cvmfs-base && make)
	#(cd ./cvmfs-atlas && make)
	#(cd ./cvmfs-cms && make)
	#(cd ./cvmfs-lhcb && make)
	#(cd ./cvmfs-lsst && make)
	#(cd ./cvmfs-lz && make)

cvmfs-cc7:
	(cd ./cc7-base && make)
	(cd ./cvmfs-base && make build-cc7)
	(cd ./cvmfs-cms && make build-cc7)
	(cd ./cvmfs-lz && make build-cc7)

upload-cc7:
	(cd ./cc7-base && make upload)
	(cd ./cvmfs-base && make upload-cc7)
	(cd ./cvmfs-cms && make upload-cc7)
	(cd ./cvmfs-lz && make upload-cc7)
