.class final Lena;
.super Ljava/lang/Object;
.source "LogReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

.field private synthetic b:Lemw;


# direct methods
.method private constructor <init>(Lemw;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lena;->b:Lemw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lemw;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lena;-><init>(Lemw;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x100000

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v3, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->b(Lemw;)Lemu;

    move-result-object v4

    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->c(Lemw;)Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->a(Lemw;)Lcom/wandoujia/logv3/model/packages/CommonPackage;

    move-result-object v0

    new-instance v6, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    invoke-direct {v6, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/CommonPackage;)V

    new-instance v0, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_elapsed_time(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->local_timestamp(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TimePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TimePackage;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->time_package(Lcom/wandoujia/logv3/model/packages/TimePackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;-><init>()V

    invoke-static {v5}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkTypeInfo(Landroid/content/Context;)[I

    move-result-object v7

    aget v8, v7, v2

    packed-switch v8, :pswitch_data_0

    sget-object v8, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;->UNKNOWN_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    :goto_0
    aget v7, v7, v1

    packed-switch v7, :pswitch_data_1

    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    :goto_1
    invoke-static {v5}, Lcom/wandoujia/base/utils/NetworkUtil;->getISP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->isp(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->network_package(Lcom/wandoujia/logv3/model/packages/NetworkPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    new-instance v0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;-><init>()V

    invoke-virtual {v4}, Lemu;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->uid(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;

    invoke-virtual {v4}, Lemu;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->telephone(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;

    invoke-virtual {v4}, Lemu;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->email(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/AccountPackage;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->account_package(Lcom/wandoujia/logv3/model/packages/AccountPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CommonPackage;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->common_package(Lcom/wandoujia/logv3/model/packages/CommonPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 134
    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->c(Lemw;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "log_modulev3"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "last_send_id"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 136
    iget-object v0, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->local_increment_id(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 137
    iget-object v0, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    const-string v3, "1.1.1"

    invoke-virtual {v0, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->proto_version(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 138
    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->c(Lemw;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "log_modulev3"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-string v3, "last_send_id"

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 143
    iget-object v0, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    move-result-object v3

    .line 144
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lemw;->b()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->toString()Ljava/lang/String;

    .line 147
    :cond_0
    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->d(Lemw;)Lemt;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    iget-object v5, v4, Lemt;->a:Lemv;

    iget-object v5, v5, Lemv;->a:Lems;

    invoke-virtual {v5}, Lems;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-ltz v5, :cond_3

    iget-object v5, v4, Lemt;->a:Lemv;

    iget-object v5, v5, Lemv;->a:Lems;

    invoke-virtual {v5}, Lems;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "log_data"

    const-string v7, "is_real_time = 0"

    invoke-virtual {v5, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-ltz v0, :cond_3

    move v0, v2

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->toByteArray()[B

    move-result-object v5

    iget-object v4, v4, Lemt;->a:Lemv;

    iget-object v0, v3, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "is_real_time"

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "log_content"

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v4, Lemv;->a:Lems;

    invoke-virtual {v0}, Lems;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "log_data"

    invoke-virtual {v0, v1, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 148
    :cond_1
    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->e(Lemw;)Lcom/wandoujia/logv3/LogSender;

    move-result-object v0

    iget-object v1, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/LogSender;->a(Z)V

    .line 150
    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->b(Lemw;)Lemu;

    move-result-object v0

    invoke-virtual {v0}, Lemu;->b()Lemz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lena;->b:Lemw;

    invoke-static {v0}, Lemw;->b(Lemw;)Lemu;

    move-result-object v0

    invoke-virtual {v0}, Lemu;->b()Lemz;

    move-result-object v0

    iget-object v1, p0, Lena;->a:Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-virtual {v0, v1}, Lemz;->onEvent(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    .line 153
    :cond_2
    return-void

    .line 130
    :pswitch_0
    sget-object v8, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;->MOBILE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    goto/16 :goto_0

    :pswitch_1
    sget-object v8, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;->WIFI:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    goto/16 :goto_0

    :pswitch_2
    sget-object v8, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;->UNKNOWN_TYPE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    invoke-virtual {v0, v8}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    goto/16 :goto_0

    :pswitch_3
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->GPRS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EDGE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_5
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UMTS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->CDMA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_0:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_A:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->CDMA_1xRTT:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSDPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSUPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_c
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_d
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->IDEN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_e
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_B:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_f
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->LTE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_10
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EHRPD:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_11
    sget-object v7, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSPAP:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 147
    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    .line 130
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
