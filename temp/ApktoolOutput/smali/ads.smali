.class public final Lads;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/mc;


# static fields
.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static a(Ladl;)Ladt;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 59
    iget-object v1, p0, Ladl;->a:Lacz;

    .line 60
    iget-object v2, p0, Ladl;->b:Lada;

    .line 61
    iget-object v3, p0, Ladl;->d:Lorg/json/JSONObject;

    .line 65
    const-string v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ladt;

    invoke-direct {v0, v1, v2}, Ladt;-><init>(Lacz;Lada;)V

    .line 67
    iget-object v1, p0, Ladl;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ladt;->a(Lorg/json/JSONObject;)V

    .line 92
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/alipay/wandoujia/qb;->a(Ljava/lang/String;)Lcom/alipay/wandoujia/qb;

    move-result-object v0

    .line 71
    invoke-static {}, Lads;->b()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :pswitch_0
    const-string v0, "msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u7cfb\u7edf\u5185\u90e8\u9519\u8bef"

    .line 84
    :cond_1
    new-instance v1, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :pswitch_1
    new-instance v0, Ladt;

    invoke-direct {v0, v1, v2}, Ladt;-><init>(Lacz;Lada;)V

    .line 76
    invoke-virtual {v0, v3}, Ladt;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v0, Ladi;->a:Ladi;

    iput-object v6, v0, Ladi;->b:Ljava/lang/String;

    sget-object v0, Ladi;->a:Ladi;

    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ladi;->c:Ljava/lang/String;

    sget-object v0, Ladi;->a:Ladi;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ladi;->d:J

    sput-object v6, Ladi;->a:Ladi;

    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v1, v0, Lade;->a:Landroid/content/Context;

    invoke-static {v1}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v0

    invoke-virtual {v0}, Ladd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v0

    invoke-virtual {v0}, Ladd;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ladh;

    invoke-direct {v0, v1}, Ladh;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Ladh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Ladh;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ladh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ladh;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ladh;->close()V

    move-object v0, v6

    .line 80
    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v1

    move-object v2, v6

    :goto_2
    :try_start_2
    invoke-static {}, Lacm;->a()Lacm;

    move-result-object v3

    const-string v4, "delete tid error"

    invoke-virtual {v3, v1, v4}, Lacm;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    .line 86
    :cond_4
    const-string v0, "\u7cfb\u7edf\u5185\u90e8\u9519\u8bef"

    .line 88
    new-instance v1, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lads;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/wandoujia/qb;->values()[Lcom/alipay/wandoujia/qb;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/wandoujia/qb;->j:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/wandoujia/qb;->b:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/wandoujia/qb;->c:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/wandoujia/qb;->g:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/wandoujia/qb;->i:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/wandoujia/qb;->e:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/wandoujia/qb;->h:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/wandoujia/qb;->f:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/wandoujia/qb;->a:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/wandoujia/qb;->d:Lcom/alipay/wandoujia/qb;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/qb;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lads;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/alipay/wandoujia/md;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    return-object v0
.end method

.method public final b(Ladl;)V
    .locals 6
    .parameter

    .prologue
    .line 98
    iget-object v2, p1, Ladl;->b:Lada;

    .line 99
    iget-object v3, p1, Ladl;->d:Lorg/json/JSONObject;

    .line 101
    const-string v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Ladl;->a(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p1, Ladl;->a:Lacz;

    iget-object v0, v0, Lacz;->a:Lacv;

    .line 108
    iget-object v1, p1, Ladl;->b:Lada;

    iget-object v1, v1, Lada;->k:Lacv;

    .line 109
    iget-object v4, v1, Lacv;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, v0, Lacv;->c:Ljava/lang/String;

    iput-object v4, v1, Lacv;->c:Ljava/lang/String;

    .line 112
    :cond_1
    iget-object v4, v1, Lacv;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, v0, Lacv;->d:Ljava/lang/String;

    iput-object v4, v1, Lacv;->d:Ljava/lang/String;

    .line 115
    :cond_2
    iget-object v4, v1, Lacv;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, v0, Lacv;->b:Ljava/lang/String;

    iput-object v4, v1, Lacv;->b:Ljava/lang/String;

    .line 118
    :cond_3
    iget-object v4, v1, Lacv;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    iget-object v0, v0, Lacv;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lacv;->a(Ljava/lang/String;)V

    .line 122
    :cond_4
    const-string v0, "session"

    .line 123
    const-string v1, "reflected_data"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_6

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "session = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld;->e()V

    .line 127
    iget-object v0, p1, Ladl;->b:Lada;

    iput-object v1, v0, Lada;->g:Lorg/json/JSONObject;

    .line 144
    :cond_5
    :goto_0
    const-string v0, "end_code"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lada;->d:Ljava/lang/String;

    .line 145
    const-string v0, "user_id"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lada;->h:Ljava/lang/String;

    .line 146
    const-string v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :try_start_0
    const-string v1, "result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 153
    :goto_1
    iput-object v0, v2, Lada;->e:Ljava/lang/String;

    .line 154
    const-string v0, "memo"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lada;->f:Ljava/lang/String;

    .line 155
    return-void

    .line 128
    :cond_6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 131
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-static {}, Ladi;->b()Ladi;

    move-result-object v0

    iget-object v0, v0, Ladi;->b:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    const-string v0, "tid"

    invoke-static {}, Ladi;->b()Ladi;

    move-result-object v4

    iget-object v4, v4, Ladi;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_7
    iput-object v1, v2, Lada;->g:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 139
    const-string v2, "can not put reflected values"

    .line 138
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 151
    :catch_1
    move-exception v1

    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final synthetic c(Ladl;)Ladq;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p1}, Lads;->a(Ladl;)Ladt;

    move-result-object v0

    return-object v0
.end method
