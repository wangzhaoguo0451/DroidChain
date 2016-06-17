.class public final Ldla;
.super Lhic;
.source "AdsLabelLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0c0302

    .line 19
    invoke-virtual {p0}, Ldla;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0}, Leri;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lg;->b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->SPREAD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    invoke-virtual {p0}, Ldla;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Leri;->f(I)Leri;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
