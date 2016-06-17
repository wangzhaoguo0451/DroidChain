.class public Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;
.super Landroid/widget/RelativeLayout;
.source "VideoDetailPersonIconView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;
    .locals 1
    .parameter

    .prologue
    .line 45
    const v0, 0x7f03023c

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;

    return-object v0
.end method


# virtual methods
.method public getCoverView()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getJobView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 53
    const v0, 0x7f0c049d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->b:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0c029b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPersonIconView;->c:Landroid/widget/TextView;

    .line 55
    return-void
.end method
