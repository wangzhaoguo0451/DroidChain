.class public Lcom/wandoujia/p4/video2/view/VideoSourceItem;
.super Landroid/widget/RelativeLayout;
.source "VideoSourceItem.java"


# instance fields
.field private a:Landroid/widget/RadioButton;

.field private b:Lcom/wandoujia/image/view/AsyncImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoSourceItem;
    .locals 1
    .parameter

    .prologue
    .line 41
    const v0, 0x7f030244

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0c01c7

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->a:Landroid/widget/RadioButton;

    .line 48
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->b:Lcom/wandoujia/image/view/AsyncImageView;

    .line 49
    const v0, 0x7f0c029b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->c:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0c04b0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->d:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 52
    return-void
.end method

.method public setData(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->isPrivate:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1, v3}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a0044

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 70
    :goto_1
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v4}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSelected(Z)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    return-void
.end method
