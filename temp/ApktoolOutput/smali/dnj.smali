.class public final Ldnj;
.super Lhjb;
.source "GrandCardBadgePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lhjb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/ImageView;Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->PUBLISH:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->NEW_PRODUCT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    if-eq p2, v0, :cond_0

    .line 17
    invoke-super {p0, p1, p2}, Lhjb;->a(Landroid/widget/ImageView;Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
