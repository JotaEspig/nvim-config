-- File that improves experience with repository: https://github.com/jotaEspig/beecrowd-tester
local vim = vim

vim.api.nvim_create_user_command("BeecrowdTest", function(opts)
  local filename = opts.args
  if filename == "" then
    print("Usage: :BeecrowdTest <filename>")
    return
  end

  -- Extract basename without extension
  local base = filename:match("^(.*)%.") or filename

  -- Construct file paths
  local solution_file = "solutions/" .. filename
  local input_file = "tests/" .. base .. ".in"
  local expected_file = "tests/" .. base .. ".exout"

  -- Open files in splits
  vim.cmd("edit " .. solution_file)
  vim.cmd("edit " .. input_file)
  vim.cmd("edit " .. expected_file)
end, {
  nargs = 1,
  complete = "file",
  desc = "Open related beecrowd files in separate tabs"
})
