#include <folly/experimental/bser/Bser.h>
#include <folly/String.h>

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t Size) {

        auto buf = folly::IOBuf::wrapBuffer(data, Size);
        auto len = folly::bser::decodePduLength(&*buf);

        return 0;
}

