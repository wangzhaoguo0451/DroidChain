.class public Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;
.super Landroid/widget/RelativeLayout;
.source "PlayExpSourceItemView.java"


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03022f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 40
    const v0, 0x7f0c045b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->b:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0c048e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->c:Landroid/view/View;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setData(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a0044

    .line 46
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpSourceItemView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_1
.end method
