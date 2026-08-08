Two different approaches to unit testing are being explored in this repository:

1. Locally installed cpputest
2. Docker installed cpputest

NOTE: Neither case checks in cpputest to the repository.

In the case of `locally installed cpputest`, 
1. cpputest project is downloaded from releases:
```
https://github.com/cpputest/cpputest/releases/download/v4.0/cpputest-4.0.tar.gz
```
2. Extracted
3. Extracted folder renamed from `cpputest-4.0` to `cpputest`
4. `cpputest` moved to the project `tools` folder.

The Makefiles are setup to with the installed `cpputest` library in `tools`.

In the case of `Docker installed cpputest`, `cpputest` in downloaded and built within the docker container.


The following packages are required to build cpputest:
```
sudo apt install -y build-essential autoconf automake libtool
```

Build as follows (from the cpputest directory):
```
autoreconf -i
./configure
make
```