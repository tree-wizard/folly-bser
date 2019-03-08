CC=clang-7
CXX=clang++-7


FOLLY=/root/proxygen/proxygen/folly

all: Fuzzer

clean:
	rm -rf Fuzzer

Fuzzer: fuzzer.cpp
	$(CXX) -o bserfuzzer fuzzer.cpp -I$(FOLLY)/include $(FOLLY)/_build/libfolly.so -ggdb -fsanitize=fuzzer,undefined -fsanitize-recover=address -lfolly -lboost_system -lglog
