.class public final Ldgk;
.super Ljava/lang/Object;
.source "GalleryViewPager.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->a(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)V

    .line 31
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->a(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lhw;->a(IFI)V

    .line 41
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->a(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)V

    .line 48
    :cond_0
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Ldgk;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->b(Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;)Lhw;

    move-result-object v0

    invoke-interface {v0, p1}, Lhw;->b(I)V

    .line 51
    :cond_1
    return-void
.end method
