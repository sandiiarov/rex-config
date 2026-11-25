rex.bind("cmd+s>cmd+s", "pane.send_key", { key = "ctrl+s" })
rex.bind("cmd+s>r", "client.config.reload")
rex.bind("cmd+s>s", "session.switch")

rex.bind("cmd+c", "pane.copy")
rex.bind("cmd+v", "pane.paste")

rex.bind("cmd+k", "com.superlogical.terminal.clear")
rex.bind("shift+cmd+k", "session.switch")

-- tmux default bindings, behind the cmd+s prefix
rex.bind("cmd+s>c", "client.tab.new")
rex.bind("cmd+s>shift+7", "client.tab.close")
rex.bind("cmd+s>,", "client.tab.rename")
rex.bind("cmd+s>n", "client.tab.next")
rex.bind("cmd+s>p", "client.tab.previous")
for i = 1, 9 do
  rex.bind("cmd+s>" .. i, "client.tab.goto", { index = i })
end

rex.bind("cmd+s>shift+c", "session.new")
rex.bind("cmd+s>shift+4", "session.rename")
rex.bind("cmd+s>shift+9", "session.previous")
rex.bind("cmd+s>shift+0", "session.next")
rex.bind("cmd+s>w", "pane.go_to")

rex.bind("cmd+s>shift+5", "pane.split", { direction = "right" })
rex.bind("cmd+s>shift+'", "pane.split", { direction = "down" })
rex.bind("cmd+s>x", "pane.close")
rex.bind("cmd+s>z", "pane.zoom")
rex.bind("cmd+s>o", "pane.focus_next")
rex.bind("cmd+s>shift+1", "pane.move_to_new_tab")
rex.bind("cmd+s>shift+e", "pane.balance")
rex.bind("cmd+s>pageup", "client.scroll.page_up")

for _, dir in ipairs({ "left", "right", "up", "down" }) do
  rex.bind("cmd+s>" .. dir, "pane.focus", { direction = dir })
  rex.bind("cmd+s>cmd+" .. dir, "pane.resize", { direction = dir, amount = 1 })
  rex.bind("cmd+s>alt+" .. dir, "pane.resize", { direction = dir, amount = 5 })
end
