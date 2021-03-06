IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_JOB_SCOPE') drop index ACT_RU_JOB.ACT_IDX_JOB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_JOB_SUB_SCOPE') drop index ACT_RU_JOB.ACT_IDX_JOB_SUB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_JOB_SCOPE_DEF') drop index ACT_RU_JOB.ACT_IDX_JOB_SCOPE_DEF;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_TJOB_SCOPE') drop index ACT_RU_TIMER_JOB.ACT_IDX_TJOB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_TJOB_SUB_SCOPE') drop index ACT_RU_TIMER_JOB.ACT_IDX_TJOB_SUB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_TJOB_SCOPE_DEF') drop index ACT_RU_TIMER_JOB.ACT_IDX_TJOB_SCOPE_DEF;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_SJOB_SCOPE') drop index ACT_RU_SUSPENDED_JOB.ACT_IDX_SJOB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_SJOB_SUB_SCOPE') drop index ACT_RU_SUSPENDED_JOB.ACT_IDX_SJOB_SUB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_SJOB_SCOPE_DEF') drop index ACT_RU_SUSPENDED_JOB.ACT_IDX_SJOB_SCOPE_DEF;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_DJOB_SCOPE') drop index ACT_RU_DEADLETTER_JOB.ACT_IDX_DJOB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_DJOB_SUB_SCOPE') drop index ACT_RU_DEADLETTER_JOB.ACT_IDX_DJOB_SUB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_DJOB_SCOPE_DEF') drop index ACT_RU_DEADLETTER_JOB.ACT_IDX_DJOB_SCOPE_DEF;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_EJOB_SCOPE') drop index ACT_RU_EXTERNAL_JOB.ACT_IDX_EJOB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_EJOB_SUB_SCOPE') drop index ACT_RU_EXTERNAL_JOB.ACT_IDX_EJOB_SUB_SCOPE;
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'ACT_IDX_EJOB_SCOPE_DEF') drop index ACT_RU_EXTERNAL_JOB.ACT_IDX_EJOB_SCOPE_DEF;

if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_JOB') alter table ACT_RU_JOB drop constraint ACT_FK_JOB_EXCEPTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_JOB') alter table ACT_RU_JOB drop constraint ACT_FK_JOB_CUSTOM_VALUES;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TIMER_JOB') alter table ACT_RU_TIMER_JOB drop constraint ACT_FK_TIMER_JOB_EXCEPTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TIMER_JOB') alter table ACT_RU_TIMER_JOB drop constraint ACT_FK_TIMER_JOB_CUSTOM_VALUES;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_SUSPENDED_JOB') alter table ACT_RU_SUSPENDED_JOB drop constraint ACT_FK_SUSPENDED_JOB_EXCEPTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_SUSPENDED_JOB') alter table ACT_RU_SUSPENDED_JOB drop constraint ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_DEADLETTER_JOB') alter table ACT_RU_DEADLETTER_JOB drop constraint ACT_FK_DEADLETTER_JOB_EXCEPTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_DEADLETTER_JOB') alter table ACT_RU_DEADLETTER_JOB drop constraint ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXTERNAL_JOB') alter table ACT_RU_EXTERNAL_JOB drop constraint ACT_FK_EXTERNAL_JOB_EXCEPTION;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXTERNAL_JOB') alter table ACT_RU_EXTERNAL_JOB drop constraint ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES;

if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_JOB') drop table ACT_RU_JOB;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_TIMER_JOB') drop table ACT_RU_TIMER_JOB;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_SUSPENDED_JOB') drop table ACT_RU_SUSPENDED_JOB;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_DEADLETTER_JOB') drop table ACT_RU_DEADLETTER_JOB;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_HISTORY_JOB') drop table ACT_RU_HISTORY_JOB;
if exists (select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'ACT_RU_EXTERNAL_JOB') drop table ACT_RU_EXTERNAL_JOB;
