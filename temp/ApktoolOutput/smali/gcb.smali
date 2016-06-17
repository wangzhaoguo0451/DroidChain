.class public final Lgcb;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->APP:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->GAME:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->VIDEO:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x5

    return v0
.end method

.method public static b()Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
