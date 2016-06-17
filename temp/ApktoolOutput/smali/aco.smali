.class public final Laco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/lang/Object;

.field private static e:I

.field private static synthetic f:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/wandoujia/fa;

.field private c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laco;->d:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    sput v0, Laco;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/wandoujia/fa;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    iput-object p1, p0, Laco;->b:Lcom/alipay/wandoujia/fa;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Laco;->c:Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Laco;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Laco;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laco;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/wandoujia/fa;)Ljava/io/File;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s-%s-%s.%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 200
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 201
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/alipay/wandoujia/fa;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 199
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 205
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 219
    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 221
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 222
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method static a()V
    .locals 2

    .prologue
    .line 56
    sget-object v1, Laco;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget v0, Laco;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laco;->e:I

    .line 56
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 214
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 216
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/fa;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 143
    if-eqz v5, :cond_0

    array-length v0, v5

    if-nez v0, :cond_2

    .line 144
    :cond_0
    invoke-static {p0, p2}, Laco;->a(Ljava/lang/String;Lcom/alipay/wandoujia/fa;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Laco;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    const/4 v3, 0x0

    .line 148
    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_1
    if-lt v4, v6, :cond_4

    move v1, v0

    move-object v0, v3

    .line 161
    :goto_2
    if-nez v0, :cond_3

    .line 162
    invoke-static {}, Laco;->c()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 181
    :cond_3
    :goto_3
    if-eqz v0, :cond_1

    .line 187
    invoke-static {v0, p1}, Laco;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 148
    :cond_4
    aget-object v2, v5, v4

    .line 149
    if-nez v0, :cond_5

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/wandoujia/fa;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    .line 153
    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {}, Lade;->a()Lade;

    move-result-object v7

    iget-object v7, v7, Lade;->b:Lcom/alipay/android/app/d;

    .line 154
    invoke-interface {v7}, Lcom/alipay/android/app/d;->b()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/alipay/wandoujia/fa;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    move v1, v0

    move-object v0, v2

    .line 158
    goto :goto_2

    :cond_6
    move v0, v1

    .line 151
    goto :goto_4

    .line 148
    :cond_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 168
    :pswitch_0
    invoke-static {p0, p2}, Laco;->a(Ljava/lang/String;Lcom/alipay/wandoujia/fa;)Ljava/io/File;

    move-result-object v0

    goto :goto_3

    .line 178
    :pswitch_1
    if-nez v1, :cond_3

    .line 179
    invoke-static {p0, p2}, Laco;->a(Ljava/lang/String;Lcom/alipay/wandoujia/fa;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Laco;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/wandoujia/fa;->values()[Lcom/alipay/wandoujia/fa;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/wandoujia/fa;->f:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/wandoujia/fa;->e:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/wandoujia/fa;->l:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/wandoujia/fa;->d:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/wandoujia/fa;->g:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/wandoujia/fa;->k:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/wandoujia/fa;->i:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/wandoujia/fa;->a:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/wandoujia/fa;->m:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/wandoujia/fa;->c:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alipay/wandoujia/fa;->h:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alipay/wandoujia/fa;->b:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alipay/wandoujia/fa;->j:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Laco;->f:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected final b()V
    .locals 8

    .prologue
    .line 78
    invoke-static {}, Laco;->c()[I

    move-result-object v0

    iget-object v1, p0, Laco;->b:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v1}, Lcom/alipay/wandoujia/fa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Ladd;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :goto_1
    return-void

    .line 88
    :pswitch_1
    :try_start_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 89
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 93
    const-wide/16 v2, 0x8

    rem-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 107
    :cond_1
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Laco;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lade;->a()Lade;

    move-result-object v2

    iget-object v2, v2, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v2}, Lcom/alipay/android/app/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 115
    const-string v0, "datetime"

    iget-object v3, p0, Laco;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "monitorType"

    iget-object v3, p0, Laco;->b:Lcom/alipay/wandoujia/fa;

    invoke-virtual {v3}, Lcom/alipay/wandoujia/fa;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 120
    invoke-static {v0}, Ladd;->a(Landroid/content/Context;)Ladd;

    move-result-object v3

    .line 121
    iget-object v4, v3, Ladd;->a:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v5, "com.alipay.android.app"

    .line 122
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_2

    const-string v0, "msp"

    .line 124
    :goto_2
    const-string v5, "message"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==android("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Laco;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "tid"

    invoke-virtual {v3}, Ladd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laco;->b:Lcom/alipay/wandoujia/fa;

    invoke-static {v1, v0, v2}, Laco;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/wandoujia/fa;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_3
    sget-object v1, Laco;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_2
    sget v0, Laco;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laco;->e:I

    .line 133
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 123
    :cond_2
    :try_start_3
    const-string v0, "sdk"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
