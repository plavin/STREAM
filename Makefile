CRAY_CC = cc
CRAY_CFLAGS = -O3 -h omp -lm -h cache3 -h vector3 -h concurrent -h vector3

ICC = icc
ICC_CFLAGS = -O3 -qopenmp


stream_cray: stream.c
	$(CRAY_CC) $(CRAY_CFLAGS) stream.c -o stream

stream_intel: stream.c
	$(ICC_CC) $(ICC_CFLAGS) stream.c -o stream

clean:
	rm -f stream
