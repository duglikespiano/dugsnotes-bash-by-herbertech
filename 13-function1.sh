#!/bin/bash
# Use Bash explicitly (important for portability and predictable behavior)

showuptime() {
    # Try running `uptime -p`
    # If it exists, this is GNU/Linux
    # -p outputs "pretty" uptime (Linux-only option)
    # >/dev/null 2>&1 suppresses both stdout and stderr
    if uptime -p >/dev/null 2>&1; then

        # GNU/Linux branch

        # Example output of `uptime -p`:
        #   "up 2 hours, 15 minutes"
        # cut -c4- removes the leading "up "
        up=$(uptime -p | cut -c4-)

        # `uptime -s` prints the system boot time on Linux
        # Example: 2026-01-28 09:41:03
        since=$(uptime -s)

    else
        # macOS / BSD branch
        # macOS `uptime` does NOT support -p or -s

        # Example macOS uptime output:
        #   00:41  up 3 days,  2:14, 2 users, load averages: 2.31 2.12 2.08
        #
        # sed extracts only the "up X days" part
        up=$(uptime | sed 's/.*up \([^,]*\),.*/\1/')

        # sysctl provides system boot time on macOS
        # Example output:
        #   { sec = 1706402461, usec = 0 } Tue Jan 28 09:41:01 2026
        #
        # awk extracts the human-readable date
        # tr removes the trailing comma
        since=$(sysctl -n kern.boottime | awk '{print $4, $5}' | tr -d ',')
    fi

    # Here-document (heredoc) for clean multi-line output
    # Variables ${up} and ${since} are expanded by the shell
    cat <<EOF
---
This machine has been up for ${up}
It has been running since ${since}
---
EOF
}

# Call the function
showuptime
