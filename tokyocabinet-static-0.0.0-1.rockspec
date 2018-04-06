#!/usr/bin/lua

package = "tokyocabinet-static"
local _version = "0.0.0"
version = _version .. "-1"
source = {
  url="git://github.com/slact/lua-tokyocabinet-static"
  --tag="v".._version
}
description = {
  summary = "Tokyocabinet (static build)",
  detailed = "To be detailed",
  homepage = "https://github.com/slact/lua-tokyocabinet-static",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  type = "builtin",
  external_dependencies = {
    ZLIB = {
      header = "lzib.h",
      library = "z",
    }
  },
  modules = {
    tokyocabinet = {
      sources = {
        --tokyocabinet
        "src/tokyocabinet/md5.c",
        "src/tokyocabinet/myconf.c",
        "src/tokyocabinet/tcadb.c",
        "src/tokyocabinet/tcbdb.c",
        "src/tokyocabinet/tcfdb.c",
        "src/tokyocabinet/tchdb.c",
        "src/tokyocabinet/tctdb.c",
        "src/tokyocabinet/tcutil.c",
        -- lua binding
        "src/tokyocabinet.c"
      },
      incdirs = { "src", "src/tokyocabinet" },
      libraries = {"z", "beep"}
    }
  }
}
