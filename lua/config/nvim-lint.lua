local linters = require("lint").linters

linters.clippy = {
  cmd = 'cargo clippy',
  stdin = true,
  stream = "both",
  ignore_exitcode = true,
}
