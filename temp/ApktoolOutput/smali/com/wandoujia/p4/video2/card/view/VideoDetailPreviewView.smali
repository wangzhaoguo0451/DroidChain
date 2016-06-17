.class public Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;
.super Landroid/widget/RelativeLayout;
.source "VideoDetailPreviewView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

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
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;
    .locals 1
    .parameter

    .prologue
    .line 42
    const v0, 0x7f03023d

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;

    return-object v0
.end method


# virtual methods
.method public getCoverView()Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 50
    return-void
.end method
