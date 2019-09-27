CRAY_CC = cc
CRAY_CFLAGS = -O3 -h omp -lm -h cache3 -h vector3 -h concurrent -h vector3


stream_cray: stream.c
	$(CRAY_CC) $(CRAY_CFLAGS) stream.c -o stream

clean:
	rm -f stream
