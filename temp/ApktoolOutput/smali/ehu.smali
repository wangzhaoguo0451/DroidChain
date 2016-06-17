.class public final Lehu;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# static fields
.field private static a:Lorg/apache/http/HttpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x283d

    const-string v3, "http"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lehu;->a:Lorg/apache/http/HttpHost;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    const-string v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    const-string v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 73
    .line 74
    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2}, Lehu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/wandoujia/rpc/http/client/DataApi;->setProxyHttpHost(Lorg/apache/http/HttpHost;)V

    .line 77
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lehu;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    const-string v2, "mProxyHost"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lehu;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const/4 v0, 0x1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lehu;->a(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string v2, "ProxySettings"

    const-string v3, "error setting up webkit proxying"

    invoke-static {v2, v3, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 132
    .line 135
    :try_start_0
    const-string v2, "android.webkit.WebViewCore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    :try_start_1
    const-string v4, "android.net.ProxyProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    .line 138
    :goto_0
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 141
    const-string v5, "sendStaticMessage"

    new-array v6, v8, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 143
    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 147
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v3, v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0xc1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_1
    return v0

    :catch_0
    move-exception v2

    move-object v2, v3

    :goto_2
    move-object v4, v2

    move-object v2, v3

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 108
    const-string v0, "127.0.0.1"

    const-string v1, "10301"

    invoke-static {v0, v1}, Lehu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    sget-object v1, Lehu;->a:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/client/DataApi;->setProxyHttpHost(Lorg/apache/http/HttpHost;)V

    .line 111
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lehu;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 116
    const-string v1, "mProxyHost"

    sget-object v2, Lehu;->a:Lorg/apache/http/HttpHost;

    invoke-static {v0, v1, v2}, Lehu;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_0
    const-string v0, "127.0.0.1"

    const/16 v1, 0x283d

    invoke-static {v0, v1}, Lehu;->a(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "ProxySettings"

    const-string v2, "error setting up webkit proxying"

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    const-string v0, "android.webkit.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
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

    .line 45
    if-eqz v0, :cond_1

    .line 46
    const-string v1, "mRequestQueue"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_1
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
