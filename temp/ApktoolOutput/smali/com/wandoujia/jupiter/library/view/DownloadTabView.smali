.class public Lcom/wandoujia/jupiter/library/view/DownloadTabView;
.super Lcom/wandoujia/jupiter/library/view/SelectTabView;
.source "DownloadTabView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/library/view/SelectTabView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/library/view/SelectTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/jupiter/library/view/SelectTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wandoujia/jupiter/library/view/SelectTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/jupiter/library/view/DownloadTabView;
    .locals 1
    .parameter

    .prologue
    .line 43
    const v0, 0x7f030174

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 5
    .parameter

    .prologue
    const v2, 0x3f19999a

    const/high16 v1, 0x3f80

    .line 85
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->d:Landroid/view/View;

    .line 90
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sub-float v4, v1, p1

    mul-float/2addr v0, v4

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 92
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 93
    return-void

    .line 87
    :cond_1
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->d:Landroid/view/View;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 90
    goto :goto_1

    :cond_3
    move v1, v2

    .line 92
    goto :goto_2
.end method

.method public getDarkIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNumberView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/wandoujia/jupiter/library/view/SelectTabView;->onFinishInflate()V

    .line 49
    const v0, 0x7f0c0379

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0c037a

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->b:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0c037b

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->c:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a(F)V

    .line 53
    return-void
.end method

.method public setNumber(I)V
    .locals 2
    .parameter

    .prologue
    .line 77
    if-gtz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/library/view/SelectTabView;->setSelected(Z)V

    .line 58
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/view/DownloadTabView;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f80

    :goto_1
    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    const v0, 0x3f19999a

    goto :goto_1
.end method
