# MINUTE HOUR DAY_ON_MONTH MONTH DAY_OF_WEEK
# 30 20 * * 1-5

* * * * * /root/monitor_process.sh &>> /var/log/log_apache_monitor.sh
