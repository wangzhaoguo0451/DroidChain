.class public Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;
.super Landroid/widget/RelativeLayout;
.source "VideoDetailShortHeaderView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    const v0, 0x7f0301e8

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;

    .line 54
    invoke-direct {v0, p1}, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->setData(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    .line 55
    return-object v0
.end method

.method private setData(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f020426

    const/4 v2, 0x0

    .line 75
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->largePictures:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->largePictures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->largePictures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->b:Landroid/widget/ImageView;

    new-instance v1, Lgpk;

    invoke-direct {v1, p1}, Lgpk;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->d:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ld;->a(Landroid/widget/TextView;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-static {v0, p1}, Ld;->a(Landroid/view/View;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V

    .line 93
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v3}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 97
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f0c0453

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 67
    const v0, 0x7f0c0452

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->b:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0c044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->c:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0c0448

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->d:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/video2/view/VideoDetailShortHeaderView;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ld;->a(Landroid/widget/TextView;)V

    .line 72
    return-void
.end method
