.class public abstract Lgzr;
.super Ljava/lang/Object;
.source "NormalEntityProcessor.java"

# interfaces
.implements Lgzz;


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lgzr;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static synthetic a(Landroid/content/Intent;Lcom/wandoujia/push2/protocol/NormalBody;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v1

    iget-object v1, v1, Lgzu;->d:Landroid/content/Context;

    const-class v2, Lcom/wandoujia/push2/PushReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "push2_id"

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/NormalBody;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "push2_title"

    invoke-virtual {p1}, Lcom/wandoujia/push2/protocol/NormalBody;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "push2_flag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lgzr;->a:I

    return v0
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 275
    .line 278
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 283
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 284
    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v0

    .line 290
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 294
    :goto_1
    if-eqz v2, :cond_0

    .line 299
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    goto :goto_0

    .line 286
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_2

    .line 292
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 294
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 299
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 301
    :catch_2
    move-exception v1

    goto :goto_0

    .line 288
    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4
    if-eqz v1, :cond_3

    .line 292
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 294
    :cond_3
    :goto_5
    if-eqz v2, :cond_0

    .line 299
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 301
    :catch_4
    move-exception v1

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_4

    .line 292
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 294
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 299
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 301
    :cond_5
    :goto_8
    throw v0

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_8

    .line 290
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 288
    :catch_a
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_b
    move-exception v3

    goto :goto_4

    .line 286
    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_d
    move-exception v3

    goto :goto_2
.end method

.method private static c()J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 54
    sget v2, Lgzr;->a:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 61
    :goto_0
    return-wide v0

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v2

    iget-object v2, v2, Lgzu;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v3

    iget-object v3, v3, Lgzu;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 12
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    :try_start_0
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 99
    const-class v3, Lcom/wandoujia/push2/protocol/NormalBody;

    invoke-virtual {v0, p1, v3}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/NormalBody;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {p0}, Lgzr;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const-string v0, "NormalEntityProcessor"

    const-string v3, "user close push"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lgzr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getType()I

    move-result v3

    if-ne v3, v6, :cond_6

    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getType()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getType()I

    move-result v3

    if-ne v3, v6, :cond_3

    :cond_2
    move v3, v1

    .line 113
    :goto_1
    if-nez v3, :cond_7

    .line 114
    const-string v0, "NormalEntityProcessor"

    const-string v1, "notification should not show"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 115
    goto :goto_0

    .line 112
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v3

    iget-object v3, v3, Lgzu;->d:Landroid/content/Context;

    const-string v6, "push2"

    invoke-virtual {v3, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "last_display_time"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v3

    iget-object v3, v3, Lgzu;->b:Lgzy;

    iget-wide v6, v3, Lgzy;->e:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    move v3, v1

    :goto_2
    if-eqz v3, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_5

    move v3, v1

    :goto_3
    if-eqz v3, :cond_6

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_1

    .line 118
    :cond_7
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 119
    const-string v0, "NormalEntityProcessor"

    const-string v3, "No intent"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 125
    :cond_8
    :try_start_1
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIntent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 131
    const v4, 0x186f1

    const-wide/16 v6, 0xfff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    and-long/2addr v6, v8

    long-to-int v5, v6

    add-int/2addr v4, v5

    .line 135
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    new-instance v6, Lgzt;

    invoke-direct {v6, v2}, Lgzt;-><init>(B)V

    .line 138
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 139
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgzr;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lgzt;->a:Landroid/graphics/Bitmap;

    .line 141
    :cond_9
    iget-object v7, v6, Lgzt;->a:Landroid/graphics/Bitmap;

    if-nez v7, :cond_a

    .line 142
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v7

    iget-object v7, v7, Lgzu;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v8

    iget-object v8, v8, Lgzu;->b:Lgzy;

    iget v8, v8, Lgzy;->d:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lgzt;->a:Landroid/graphics/Bitmap;

    .line 146
    :cond_a
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getStyle()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 173
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getDownload()Lcom/wandoujia/push2/protocol/Download;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 174
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getDownload()Lcom/wandoujia/push2/protocol/Download;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/Download;->isPreDownload()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 175
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v7

    iget-object v7, v7, Lgzu;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getDownload()Lcom/wandoujia/push2/protocol/Download;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "phoenix.intent.action.PUSH_DOWNLOAD"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-class v11, Lcom/wandoujia/push2/PushReceiver;

    invoke-direct {v10, v7, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v10, Lcvo;

    invoke-direct {v10}, Lcvo;-><init>()V

    const-string v11, "push2_download"

    invoke-virtual {v10, v8}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    :cond_c
    :goto_5
    new-instance v7, Lgzs;

    invoke-direct {v7, v3, v0, v6, v4}, Lgzs;-><init>(Landroid/content/Intent;Lcom/wandoujia/push2/protocol/NormalBody;Lgzt;I)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getType()I

    move-result v0

    if-nez v0, :cond_d

    .line 261
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    iget-object v0, v0, Lgzu;->d:Landroid/content/Context;

    const-string v3, "push2"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_display_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    move v0, v1

    .line 263
    goto/16 :goto_0

    .line 127
    :catch_1
    move-exception v3

    const-string v3, "NormalEntityProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parse intent failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 128
    goto/16 :goto_0

    .line 148
    :pswitch_0
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getGoldStyle()Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;

    move-result-object v7

    if-nez v7, :cond_e

    .line 149
    const-string v0, "NormalEntityProcessor"

    const-string v3, "No gold style"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 150
    goto/16 :goto_0

    .line 152
    :cond_e
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getGoldStyle()Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    sget v7, Lgzr;->a:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_f

    .line 154
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getGoldStyle()Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgzr;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lgzt;->c:Landroid/graphics/Bitmap;

    .line 156
    :cond_f
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getGoldStyle()Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;->getCollapsedImage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 157
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getGoldStyle()Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/NormalBody$GoldStyle;->getCollapsedImage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgzr;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lgzt;->d:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 161
    :pswitch_1
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIronStyle()Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;

    move-result-object v7

    if-nez v7, :cond_10

    .line 162
    const-string v0, "NormalEntityProcessor"

    const-string v3, "No gold style"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_10
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIronStyle()Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 166
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getIronStyle()Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/push2/protocol/NormalBody$IronStyle;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgzr;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lgzt;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 177
    :cond_11
    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/NormalBody;->getDownload()Lcom/wandoujia/push2/protocol/Download;

    move-result-object v7

    new-instance v8, Lcvo;

    invoke-direct {v8}, Lcvo;-><init>()V

    const-string v9, "push2_download"

    invoke-virtual {v8, v7}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
