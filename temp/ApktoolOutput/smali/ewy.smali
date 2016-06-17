.class final Lewy;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"

# interfaces
.implements Lefm;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-static {p1}, Lcom/wandoujia/base/utils/NetworkUtil;->parseNetworkType(Landroid/net/NetworkInfo;)I

    move-result v0

    .line 109
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lewx;->a(Z)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 115
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v1, v2}, Lewx;->a(ZZ)V

    goto :goto_1
.end method
