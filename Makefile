MAKEFLAGS += --no-builtin-rules

.SUFFIXES:

manifest: amd64 arm64 ppc64le s390x 386 armv7 armv6
	docker push clover/true
	docker manifest create clover/true \
	    clover/true:amd64 \
	    clover/true:arm64 \
	    clover/true:ppc64le \
	    clover/true:s390x \
	    clover/true:386 \
	    clover/true:armv7 \
	    clover/true:armv6
	docker manifest push -p clover/true

amd64: src/true.amd64
	docker buildx build -f Dockerfile.$@ --platform linux/$@ --load -t clover/true:$@ .

arm64: src/true.arm64
	docker buildx build -f Dockerfile.$@ --platform linux/$@ --load -t clover/true:$@ .

ppc64le: src/true.ppc64le
	docker buildx build -f Dockerfile.$@ --platform linux/$@ --load -t clover/true:$@ .

s390x: src/true.s390x
	docker buildx build -f Dockerfile.$@ --platform linux/$@ --load -t clover/true:$@ .

386: src/true.386
	docker buildx build -f Dockerfile.$@ --platform linux/$@ --load -t clover/true:$@ .

armv7: src/true.armv7
	docker buildx build -f Dockerfile.$@ --platform linux/arm/v7 --load -t clover/true:$@ .

armv6: src/true.armv6
	docker buildx build -f Dockerfile.$@ --platform linux/arm/v6 --load -t clover/true:$@ .

.PHONY: all amd64 arm64 ppc64le s390x 386 armv7 armv6
