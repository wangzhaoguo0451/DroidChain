.class public Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "CommunityAttachedReloadImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadImageView;->a(Z)V

    .line 27
    invoke-super {p0}, Lcom/wandoujia/image/view/AsyncImageView;->onAttachedToWindow()V

    .line 28
    return-void
.end method
