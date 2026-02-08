local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
  s("main", {
    t({ "#include <stdio.h>", "", "int main(void) {", "    " }),
    i(1, "return 0;"),
    t({ "", "}" }),
  }),

  s("printf", {
    t("printf(\""),
    i(1),
    t("\\n\");"),
  }),

  s("fori", {
    t("for (int i = 0; i < "),
    i(1),
    t("; i++) {"),
    t({ "", "    " }),
    i(2),
    t({ "", "}" }),
  }),
}

