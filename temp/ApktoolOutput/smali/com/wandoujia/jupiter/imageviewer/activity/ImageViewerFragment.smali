.class public Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "ImageViewerFragment.java"


# instance fields
.field private a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

.field private b:Ldgg;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ldgf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 166
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->b:Ldgg;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->b:Ldgg;

    invoke-virtual {v2}, Ldgg;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->g:Ldgf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->g:Ldgf;

    invoke-virtual {v1}, Ldgf;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ldgf;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, p0, v1, v3}, Ldgf;-><init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;Landroid/graphics/Bitmap;B)V

    iput-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->g:Ldgf;

    :goto_0
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->g:Ldgf;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ldgf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_1
    new-instance v1, Ldgf;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Ldgf;-><init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;Landroid/graphics/Bitmap;B)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->g:Ldgf;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0e037d

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "image_paths"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->d:Ljava/util/ArrayList;

    const-string v1, "default_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->e:I

    const-string v1, "save_directory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->f:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 66
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    const v0, 0x7f0301d3

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 80
    const v0, 0x7f0c0354

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0438

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    new-instance v4, Ldge;

    invoke-direct {v4, p0}, Ldge;-><init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)V

    invoke-virtual {v0, v4}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->setOnPageChangeListener(Lhw;)V

    new-instance v0, Ldgg;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v5}, Ldgg;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->b:Ldgg;

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    iget-object v4, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->b:Ldgg;

    invoke-virtual {v0, v4}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->setAdapter(Lgf;)V

    iget-object v4, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    new-instance v5, Ldgi;

    invoke-direct {v5}, Ldgi;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v0, v6, :cond_0

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->a:Lhx;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eq v1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-object v5, v4, Landroid/support/v4/view/ViewPager;->a:Lhx;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    const/4 v1, 0x2

    iput v1, v4, Landroid/support/v4/view/ViewPager;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->b()V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a:Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/imageviewer/views/GalleryViewPager;->setCurrentItem(I)V

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 81
    :cond_1
    return-object v3

    :cond_2
    move v0, v2

    .line 80
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0437

    .line 86
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->a()V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldgd;

    invoke-direct {v1, p0}, Ldgd;-><init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
