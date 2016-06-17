.class public final Lcom/wandoujia/p4/feed/SubscribeManager;
.super Ljava/lang/Object;
.source "SubscribeManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application is not ready!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->d()Ljava/lang/String;

    .line 41
    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    invoke-static {v1}, Lcom/wandoujia/feed/model/FeedUser;->createAsUdid(Ljava/lang/String;)Lcom/wandoujia/feed/model/FeedUser;

    .line 44
    new-instance v1, Lau;

    new-instance v2, Lcth;

    invoke-direct {v2}, Lcth;-><init>()V

    invoke-static {v0}, Lfqr;->a(Landroid/content/Context;)Lfqr;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lau;-><init>(B)V

    .line 46
    return-void
.end method
