CREATE USER 'replica_user'@'%' IDENTIFIED BY 'replica_pass';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
FLUSH PRIVILEGES;

-- 必須：バイナリログを使うための設定はmy.cnfにするのが一般的です
