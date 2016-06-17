.class public final Lcom/wandoujia/p4/webdownload/util/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:Z

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x2065

    sput v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a:I

    .line 50
    const/16 v0, 0x2066

    sput v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    return-void
.end method

.method private static a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0xffff

    .line 669
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 671
    :cond_0
    sub-int v1, v2, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p0

    .line 672
    if-eq v1, p0, :cond_0

    if-eq v1, p1, :cond_0

    if-ge v1, v2, :cond_0

    .line 673
    return v1
.end method

.method public static a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 534
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 539
    const-string v2, "com.wandoujia.framework.webdownload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 554
    :goto_0
    :try_start_0
    const-string v2, "android.net.ProxyProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 556
    :goto_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    const-string v3, "android.net.ProxyInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 562
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 564
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 565
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const/4 v5, 0x0

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    const-string v3, "android.intent.extra.PROXY_INFO"

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lgxj;

    invoke-direct {v3, p1, p0, v2}, Lgxj;-><init>(Landroid/content/BroadcastReceiver;Landroid/app/Application;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 585
    :goto_2
    return-object v0

    .line 542
    :cond_0
    invoke-static {}, Lgxl;->b()Ljava/util/List;

    move-result-object v2

    .line 543
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 545
    goto :goto_2

    .line 548
    :cond_2
    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->h()Lorg/apache/http/HttpHost;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    .line 585
    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Lcom/wandoujia/p4/webdownload/PhoenixProxyCacheManager;Lorg/apache/http/HttpHost;)Lihd;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 74
    invoke-static {}, Liif;->a()V

    .line 76
    new-instance v0, Lgxh;

    invoke-direct {v0}, Lgxh;-><init>()V

    .line 92
    new-instance v1, Liht;

    invoke-direct {v1, v0}, Liht;-><init>(Lihs;)V

    .line 100
    new-instance v8, Lihd;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    invoke-direct {v8, v0, v1, p0}, Lihd;-><init>(ILiht;Liib;)V

    .line 103
    :try_start_0
    iget-object v0, v8, Lihd;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lihu;

    iget-object v1, v8, Lihd;->c:Liia;

    iget-object v2, v8, Lihd;->a:Lhxl;

    new-instance v3, Liij;

    iget-object v4, v8, Lihd;->e:Liht;

    iget-object v5, v8, Lihd;->a:Lhxl;

    iget-object v6, v8, Lihd;->f:Liei;

    invoke-direct {v3, v4, v5, v6}, Liij;-><init>(Liht;Lhxl;Liei;)V

    iget-object v4, v8, Lihd;->f:Liei;

    iget-object v5, v8, Lihd;->g:Lhxt;

    iget-object v6, v8, Lihd;->h:Liib;

    invoke-direct/range {v0 .. v6}, Lihu;-><init>(Liia;Lhxl;Liij;Liei;Lhxt;Liib;)V

    iget-object v1, v8, Lihd;->d:Lhtx;

    invoke-virtual {v1, v0}, Lhtx;->a(Lhvt;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "127.0.0.1"

    iget v2, v8, Lihd;->b:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, v8, Lihd;->d:Lhtx;

    new-instance v2, Lhtz;

    invoke-direct {v2, v1, v0}, Lhtz;-><init>(Lhtx;Ljava/net/SocketAddress;)V

    new-instance v3, Lhwi;

    invoke-direct {v3}, Lhwi;-><init>()V

    const-string v4, "binder"

    invoke-interface {v3, v4, v2}, Lhvs;->a(Ljava/lang/String;Lhvq;)V

    invoke-virtual {v1}, Lhtx;->a()Lhvk;

    move-result-object v1

    invoke-interface {v1, v3}, Lhvk;->a(Lhvs;)Lhvg;

    move-result-object v1

    new-instance v3, Lhwh;

    invoke-direct {v3, v1}, Lhwh;-><init>(Lhvg;)V

    invoke-static {v2}, Lhtz;->a(Lhtz;)Lhwh;

    move-result-object v1

    new-instance v2, Lhty;

    invoke-direct {v2, v3}, Lhty;-><init>(Lhvl;)V

    invoke-virtual {v1, v2}, Lhwh;->a(Lhvm;)V

    invoke-interface {v3}, Lhvl;->h()Lhvl;

    invoke-interface {v3}, Lhvl;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v3}, Lhvl;->c()Lhvg;

    move-result-object v1

    invoke-interface {v1}, Lhvg;->g()Lhvl;

    move-result-object v1

    invoke-interface {v1}, Lhvl;->h()Lhvl;

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to bind to: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lhvl;->f()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Lorg/jboss/netty/channel/ChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    invoke-virtual {v8}, Lihd;->a()V

    move-object v0, v7

    .line 138
    :goto_0
    return-object v0

    .line 103
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lhvl;->c()Lhvg;

    move-result-object v0

    iget-object v1, v8, Lihd;->a:Lhxl;

    invoke-interface {v1, v0}, Lhxl;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ligu;

    invoke-direct {v2, v8}, Ligu;-><init>(Lihd;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_1
    .catch Lorg/jboss/netty/channel/ChannelException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move v0, v9

    .line 114
    :goto_1
    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    .line 115
    invoke-virtual {v8}, Lihd;->a()V

    move-object v0, v7

    .line 116
    goto :goto_0

    .line 119
    :cond_1
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 121
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object v0, v8

    .line 138
    goto :goto_0

    :catch_1
    move-exception v3

    .line 127
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    :goto_3
    const-wide/16 v2, 0x32

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 135
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 136
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    :try_start_6
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 129
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    const-string v0, "http.proxyHost"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 520
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 521
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 455
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    const-string v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    const-string v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 148
    .line 149
    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    const-string v2, "mProxyHost"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_2

    .line 160
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 163
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_3

    .line 164
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_4

    .line 168
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 172
    :cond_4
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 175
    const-string v2, "ProxySettings"

    const-string v3, "error setting up webkit proxying"

    invoke-static {v2, v3, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b(Landroid/content/Context;)V

    .line 228
    :try_start_0
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with 4.0 API."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const-string v2, "android.webkit.JWebCoreJavaBridge"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 231
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 232
    const/4 v4, 0x0

    const-string v5, "android.net.ProxyProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 233
    const-string v4, "updateProxy"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 235
    const-string v3, "android.webkit.BrowserFrame"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 236
    const-string v4, "sJavaBridge"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 237
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 240
    const-string v4, "android.net.ProxyProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 241
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 242
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 243
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 244
    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 247
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with 4.0 API successful!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string v2, "ProxySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to set HTTP proxy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 253
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lorg/apache/http/HttpHost;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_4

    .line 194
    const-string v1, "mProxyHost"

    invoke-static {v0, v1, p1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    .line 199
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 200
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_2

    .line 204
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 207
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    .line 208
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 215
    const-string v1, "ProxySettings"

    const-string v2, "error setting up webkit proxying"

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    const-string v0, "http.proxyPort"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    sget-boolean v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c:Z

    if-eqz v0, :cond_0

    .line 419
    monitor-exit v1

    .line 450
    :goto_0
    return-void

    .line 421
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 424
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 425
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 426
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c:Z

    .line 428
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 421
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 430
    :cond_1
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgxi;

    invoke-direct {v1, p0}, Lgxi;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    sget-object v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :goto_1
    :try_start_3
    sget-boolean v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_2

    .line 447
    :try_start_4
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 448
    :catch_0
    move-exception v0

    goto :goto_1

    .line 450
    :cond_2
    :try_start_5
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b(Landroid/content/Context;)V

    .line 264
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with 4.1 - 4.3 API."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :try_start_0
    const-string v2, "android.webkit.BrowserFrame"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 267
    const-string v3, "sJavaBridge"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 268
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 269
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 271
    const-string v3, "android.net.ProxyProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 272
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 273
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 274
    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 275
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 278
    const-string v4, "android.webkit.JWebCoreJavaBridge"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 279
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 280
    const/4 v6, 0x0

    const-string v7, "android.net.ProxyProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 281
    const-string v6, "updateProxy"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 283
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const-string v2, "ProxySettings"

    const-string v3, "Setting proxy with 4.1 - 4.3 API successful!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    return v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v2, "ProxySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting proxy with >= 4.1 API failed with error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 286
    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 490
    const/4 v2, 0x0

    .line 491
    const-string v0, "android.webkit.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_1

    .line 493
    const-string v3, "getInstance"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v5, v7

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_1

    .line 496
    const-string v1, "mRequestQueue"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 499
    :goto_1
    return-object v0

    .line 493
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    const-string v0, "127.0.0.1"

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    invoke-static {p0}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b(Landroid/content/Context;)V

    .line 300
    const-string v0, "ProxySettings"

    const-string v3, "Setting proxy with >= 4.4 API."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 303
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 304
    const-string v4, "mLoadedApk"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 305
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    const-string v4, "android.app.LoadedApk"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 308
    const-string v5, "mReceivers"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 309
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 310
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 311
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 312
    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ProxyChangeListener"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    const-string v7, "onReceive"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Intent;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 317
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v0, "android.net.ProxyProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 322
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 323
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 324
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    const-string v9, "proxy"

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    const/4 v9, 0x1

    aput-object v8, v0, v9

    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 337
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/ClassNotFoundException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 338
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v2

    .line 378
    :goto_2
    return v0

    .line 333
    :cond_2
    :try_start_1
    const-string v0, "ProxySettings"

    const-string v3, "Setting proxy with >= 4.4 API successful!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_6

    move v0, v1

    .line 334
    goto :goto_2

    .line 341
    :catch_1
    move-exception v0

    .line 342
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 343
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchFieldException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 344
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 347
    :catch_2
    move-exception v0

    .line 348
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 349
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalAccessException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 350
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 353
    :catch_3
    move-exception v0

    .line 354
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 355
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalArgumentException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 359
    :catch_4
    move-exception v0

    .line 360
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 361
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 362
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 365
    :catch_5
    move-exception v0

    .line 366
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 367
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 368
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 371
    :catch_6
    move-exception v0

    .line 372
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 373
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/InstantiationException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 374
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    const-string v3, "ProxySettings"

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    const-string v0, "ProxySettings"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static d()Lorg/apache/http/HttpHost;
    .locals 3

    .prologue
    .line 606
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "127.0.0.1"

    sget v2, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 383
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 384
    const-string v0, "android.app.Application"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 385
    const-string v4, "mLoadedApk"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 386
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 387
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    const-string v4, "android.app.LoadedApk"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 389
    const-string v5, "mReceivers"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 390
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 391
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 392
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 393
    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 394
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ProxyChangeListener"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 396
    const-string v7, "onReceive"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Intent;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 398
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    const-string v0, "android.net.ProxyInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 400
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 402
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 403
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    const-string v9, "android.intent.extra.PROXY_INFO"

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    const/4 v9, 0x1

    aput-object v8, v0, v9

    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 409
    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 626
    sget v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a:I

    sget v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(II)I

    move-result v0

    sput v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a:I

    .line 627
    return-void
.end method

.method public static h()Lorg/apache/http/HttpHost;
    .locals 3

    .prologue
    .line 635
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "127.0.0.1"

    sget v2, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 639
    sget v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 664
    sget v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    sget v1, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a:I

    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->a(II)I

    move-result v0

    sput v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->b:I

    .line 665
    return-void
.end method

.method public static synthetic m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic n()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wandoujia/p4/webdownload/util/ProxySettings;->c:Z

    return v0
.end method
