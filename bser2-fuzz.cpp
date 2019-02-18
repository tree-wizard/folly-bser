#include <folly/experimental/bser/Bser.h>
#include <folly/String.h>

extern "C" int LLVMFuzzerTestOneInput(const char *data, size_t Size) {

    folly::fbstring str;
    folly::bser::serialization_opts opts;
  //std::string inputStr(data);

    str = folly::bser::toBser(data, opts);
    folly::bser::parseBser(str);

        return 0;
}