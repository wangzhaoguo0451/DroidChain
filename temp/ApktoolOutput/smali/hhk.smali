.class public final Lhhk;
.super Lemu;
.source "LoggerConfiguration.java"


# instance fields
.field private a:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lemz;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;Ljava/lang/String;Lemz;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lemu;-><init>()V

    .line 73
    iput-object p1, p0, Lhhk;->a:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 74
    iput-object p2, p0, Lhhk;->b:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lhhk;->d:Lemz;

    .line 76
    iput-object p4, p0, Lhhk;->c:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;
    .locals 3
    .parameter

    .prologue
    .line 139
    new-instance v1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;-><init>()V

    .line 141
    if-nez p1, :cond_0

    .line 142
    sget-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string v0, "launch_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_2

    .line 148
    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_1
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    .line 159
    :goto_2
    const-string v0, "launch_keyword"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->keyword(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    .line 160
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    sget-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    goto :goto_2

    .line 163
    :cond_2
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->WELCOME:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lhhk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lemz;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lhhk;->d:Lemz;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lhhk;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhhk;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final d()Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lhhk;->a:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lchv;->u()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lchv;->v()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
