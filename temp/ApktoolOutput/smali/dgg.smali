.class public final Ldgg;
.super Lgf;
.source "GalleryPagerAdapter.java"


# instance fields
.field protected final b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lgf;-><init>()V

    .line 27
    new-instance v0, Ldgh;

    invoke-direct {v0, p0}, Ldgh;-><init>(Ldgg;)V

    iput-object v0, p0, Ldgg;->d:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p2, p0, Ldgg;->c:Ljava/util/List;

    .line 53
    iput-object p1, p0, Ldgg;->b:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 97
    iget-object v0, p0, Ldgg;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    new-instance v1, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;

    iget-object v2, p0, Ldgg;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v2, p0, Ldgg;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->setUrl(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->setTag(Ljava/lang/Object;)V

    .line 103
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 107
    return-object v1
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lgf;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 92
    check-cast p1, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    check-cast p3, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    iput-object p3, p1, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->c:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    .line 93
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ldgg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
