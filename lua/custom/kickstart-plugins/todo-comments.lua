-- Customize the kickstart configured todo-comments plugin
return {
  {
    'folke/todo-comments.nvim',
    opts = {
      signs = false,
      keywords = { WARN = { alt = {} } },
      highlight = { pattern = [=[.*<(KEYWORDS)(\([^):]*\))*:]=] },
      search = { pattern = [=[\b(KEYWORDS)(\(\w*\))*:]=] },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
