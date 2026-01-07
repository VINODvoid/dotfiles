return {
  "cappyzawa/trim.nvim",
  event = "VeryLazy",
  opts = {
    ft_blocklist = { "markdown" },
    patterns = {
      [[%s/\s\+$//e]],           -- remove unwanted spaces
      [[%s/\($\n\s*\)\+\%$//]],  -- trim last line
      [[%s/\%^\n\+//]],          -- trim first line
    },
    trim_on_write = true,
    trim_trailing = true,
    trim_last_line = true,
    trim_first_line = true,
  },
}
