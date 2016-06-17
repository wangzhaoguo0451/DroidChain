.class public final Lexi;
.super Ljava/lang/Object;
.source "UpgradeNotifyCardGenerator.java"

# interfaces
.implements Lefm;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 108
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Z)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
