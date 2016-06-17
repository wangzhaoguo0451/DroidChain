.class public final Lfvk;
.super Ljava/lang/Object;
.source "GiftUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0479

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)Z
    .locals 4
    .parameter

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getEndDateStamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
