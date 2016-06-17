.class public Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;
.super Landroid/widget/FrameLayout;
.source "ImageFolderView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;
    .locals 1
    .parameter

    .prologue
    .line 29
    const v0, 0x7f0301d1

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->a:Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;

    .line 40
    const v0, 0x7f0c0430

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->b:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->b:Landroid/view/View;

    const v1, 0x7f0c0431

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->c:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->b:Landroid/view/View;

    const v1, 0x7f0c0432

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->d:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0c0433

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->findViewById(I)Landroid/view/View;

    .line 44
    return-void
.end method

.method public setImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->a:Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/views/LocalThumbnailAsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method
