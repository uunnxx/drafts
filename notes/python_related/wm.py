from i3ipc import Connection, Event

# Create the Connection object that can be used to send commands and subscribe to events.
i3 = Connection()

# Print the name of the focused window
focused = i3.get_tree().find_focused()
print('------------FOCUSED WINDOW------------ %s ------------IS ON WORKSPACE------------ %s' %
      (focused.name, focused.workspace().name))

# Query the ipc for outputs. The result is a list that represents the parsed
# reply of a command like `i3-msg -t get_outputs`.
outputs = i3.get_outputs()

print('------------ACTIVE OUTPUTS:------------')

for output in filter(lambda o: o.active, outputs):
    print('---------------OUTPUT NAME--------------', output.name)

# Send a command to be executed synchronously.
i3.command('------------FOCUS LEFT------------')

# Take all fullscreen windows out of fullscreen
for container in i3.get_tree().find_fullscreen():
    container.command('------------FULLSCREEN------------')

# Print the names of all the containers in the tree
root = i3.get_tree()
print('----------------ROOT NAME---------------', root.name)
for con in root:
    print('--------------CONTAINER NAME----------------', con.name)

# Define a callback to be called when you switch workspaces.
def on_workspace_focus(self, e):
    # The first parameter is the connection to the ipc and the second is an object
    # with the data of the event sent from i3.
    if e.current:
        print('------------WINDOWS ON THIS WORKSPACE:------------')
        for w in e.current.leaves():
            print('---------------WORKSPACE NAME--------------', w.name)

# Dynamically name your workspaces after the current window class
def on_window_focus(i3, e):
    focused = i3.get_tree().find_focused()
    ws_name = "%s:%s" % (focused.workspace().num, focused.window_class)
    i3.command('------------RENAME WORKSPACE TO------------ "%s"' % ws_name)

# Subscribe to events
i3.on(Event.WORKSPACE_FOCUS, on_workspace_focus)
i3.on(Event.WINDOW_FOCUS, on_window_focus)

# Start the main loop and wait for events to come in.
i3.main()
