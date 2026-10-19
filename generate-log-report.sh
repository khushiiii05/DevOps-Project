
#!/bin/bash

REPORT="$HOME/DevOps-Project/log-report.txt"

{
    echo "========================================"
    echo "      LINUX LOG MONITORING REPORT"
    echo "Generated: $(date)"
    echo "Hostname: $(hostname)"
    echo "========================================"

    echo ""
    echo "1. FAILED LOGIN ATTEMPTS"
    echo "----------------------------------------"
    sudo grep -Ei "failed password|authentication failure|invalid user" \
        /var/log/auth.log 2>/dev/null | tail -n 20

    echo ""
    echo "2. SSH LOGIN ACTIVITY"
    echo "----------------------------------------"
    sudo grep -Ei "sshd.*(accepted|session opened|session closed)" \
        /var/log/auth.log 2>/dev/null | tail -n 20

    echo ""
    echo "3. SYSTEM ERRORS"
    echo "----------------------------------------"
    sudo journalctl -p err -n 20 --no-pager 2>/dev/null

    echo ""
    echo "4. WARNING MESSAGES"
    echo "----------------------------------------"
    sudo journalctl -p warning -n 20 --no-pager 2>/dev/null

    echo ""
    echo "========================================"
    echo "           END OF REPORT"
    echo "========================================"

} > "$REPORT"

echo "Report created successfully: $REPORT"
