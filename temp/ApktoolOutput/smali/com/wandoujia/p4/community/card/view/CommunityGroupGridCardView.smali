.class public Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "CommunityGroupGridCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;
    .locals 1
    .parameter

    .prologue
    .line 20
    const v0, 0x7f03009d

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;

    return-object v0
.end method

.method public static c(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;
    .locals 1
    .parameter

    .prologue
    .line 25
    const v0, 0x7f03009e

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 36
    return-void
.end method
