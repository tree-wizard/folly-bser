CC=clang-6.0
CXX=clang++-6.0


FOLLY=/root/proxygen/proxygen/folly

all: Fuzzer

clean:
	rm -rf Fuzzer

Fuzzer: fuzzer.cpp

<<<<<<< HEAD
	$(CXX) -o fuzzer fuzzer.cpp -I$(FOLLY)/include $(FOLLY)/_build/libfolly.so -g -fsanitize=fuzzer,undefined -lfolly -lboost_system -lglog
=======
        $(CXX) -o fuzzer fuzzer.cpp -I$(FOLLY)/include $(FOLLY)/_build/libfolly.so -g -fsanitize=fuzzer,undefined -lfolly -lboost_system -lglog
>>>>>>> fde3a500e9defea1a8643f9454953d69c0209c33
