#!/bin/bash
while true; do
    clear
    echo "===================================="
    echo "   🧰 System Maintenance Suite"
    echo "===================================="
    echo "1) Backup System"
    echo "2) Update & Cleanup"
    echo "3) Log Monitor"
    echo "4) Exit"
    echo "------------------------------------"
    read -p "Choose an option: " option

    case $option in
        1)
            echo "Starting Backup..."
            bash /usr/local/bin/maintenance-scripts/backup.sh
            read -p "Press Enter to return to menu..."
            ;;
        2)
            echo "Starting Update & Cleanup..."
            bash /usr/local/bin/maintenance-scripts/update_cleanup.sh
            read -p "Press Enter to return to menu..."
            ;;
        3)
            echo "Starting Log Monitor..."
            bash /usr/local/bin/maintenance-scripts/log_monitor.sh
            read -p "Press Enter to return to menu..."
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option! Try again."
            read -p "Press Enter to continue..."
            ;;
    esac
done
