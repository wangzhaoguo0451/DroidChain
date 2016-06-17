.class public Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;
.super Landroid/widget/RelativeLayout;
.source "VideoProviderAdapter.java"


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;
    .locals 1
    .parameter

    .prologue
    .line 94
    const v0, 0x7f030243

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;

    return-object v0
.end method


# virtual methods
.method public getIconView()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 101
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->b:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0c04ae

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->c:Landroid/widget/ImageView;

    .line 103
    return-void
.end method

.method public setPlayByApp(Z)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v1, p0, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter$VideoProviderItemView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
