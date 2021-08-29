# i3-msg -t get_workspaces | jq  '.[]' | grep -A2 'name' | grep \"visible\"\:\ true -B1

# echo "---------------------------------------------------------------------------"

# i3-msg -t get_workspaces | jq  '.[]' | grep -A2 'name' | grep \"focused\"\:\ true -B2

# echo "---------------------------------------------------------------------------"

echo "FOCUSED WORKSPACE, VISIBLE NOW"
i3-msg -t get_workspaces | jq | tr -d ,  | grep -A1 -B1 \"visible\"\:\ true | grep -B2 \"focused\"\:\ true | awk -F\  '{ print $2 }' | head -n1

echo "---------------------------------------------------------------------------"

echo "UNFOCUSED WORKSPACE, VISIBLE NOW"
i3-msg -t get_workspaces | jq | tr -d ,  | grep -A1 -B1 \"visible\"\:\ true | grep -B2 \"focused\"\:\ false | awk -F\  '{ print $2 }' | head -n1
