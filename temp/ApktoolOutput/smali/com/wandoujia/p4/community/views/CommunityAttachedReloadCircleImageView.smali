.class public Lcom/wandoujia/p4/community/views/CommunityAttachedReloadCircleImageView;
.super Lcom/wandoujia/p4/views/CircleAsyncImageView;
.source "CommunityAttachedReloadCircleImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/views/CircleAsyncImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/CircleAsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/views/CircleAsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadCircleImageView;->a(Z)V

    .line 28
    invoke-super {p0}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->onAttachedToWindow()V

    .line 29
    return-void
.end method
