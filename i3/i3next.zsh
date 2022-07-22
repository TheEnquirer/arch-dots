wsNext=$(( $( i3-msg -t get_workspaces | jq '.[] | select(.focused).num' ) + $1))
i3-msg workspace number $wsNext
i3-msg workspace $wsNext
