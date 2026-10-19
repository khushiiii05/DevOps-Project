
#!/bin/bash

echo "=================================="
echo "     APACHE SERVICE MONITOR"
echo "=================================="

if systemctl is-active --quiet apache2
then
    echo "SUCCESS: Apache is running."
else
    echo "WARNING: Apache is stopped."
    echo "Attempting to restart Apache..."

    if sudo systemctl restart apache2
    then
        if systemctl is-active --quiet apache2
        then
            echo "SUCCESS: Apache restarted successfully!"
        else
            echo "ERROR: Apache could not start."
            exit 1
        fi
    else
        echo "ERROR: Failed to restart Apache."
        exit 1
    fi
fi
