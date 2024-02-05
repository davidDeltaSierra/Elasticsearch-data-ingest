create schema logstash;

create table if not exists logstash.product
(
    id            int auto_increment
    primary key,
    name          varchar(255)                       null,
    logstash_sync datetime default CURRENT_TIMESTAMP not null
 );

create index product_logstash_sync_index
    on logstash.product (logstash_sync desc);
