.class public final Leud;
.super Lgf;
.source "ScreenshotViewActivity.java"


# instance fields
.field final synthetic b:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Leud;->b:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-direct {p0}, Lgf;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 91
    iget-object v0, p0, Leud;->b:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->c(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/wandoujia/phoenix2/av/view/AutoRotateAsyncImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/phoenix2/av/view/AutoRotateAsyncImageView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setAdjustViewBounds(Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Leud;->b:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->b(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f0a0044

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    new-instance v0, Leue;

    invoke-direct {v0, p0}, Leue;-><init>(Leud;)V

    invoke-virtual {v1, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    check-cast p3, Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Leud;->b:Lcom/wandoujia/p4/activity/ScreenshotViewActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->b(Lcom/wandoujia/p4/activity/ScreenshotViewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
