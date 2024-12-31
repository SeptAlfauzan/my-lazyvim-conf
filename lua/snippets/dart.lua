local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("dart", {
  s("stl", {
    t("class "),
    i(1, "WidgetName"),
    t(" extends StatelessWidget {"),
    t({ "", "  const " }),
    rep(1),
    t("({super.key});"),
    t({ "", "", "  @override", "  Widget build(BuildContext context) {", "    return " }),
    i(2, "Container"),
    t("("),
    t({ "", "      " }),
    i(3, ""),
    t({ "", "    );", "  }", "}" }),
  }),
})
