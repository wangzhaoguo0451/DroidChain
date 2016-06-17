.class public final Ldgf;
.super Landroid/os/AsyncTask;
.source "ImageViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 172
    iput-object p2, p0, Ldgf;->a:Landroid/graphics/Bitmap;

    .line 174
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;Landroid/graphics/Bitmap;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Ldgf;-><init>(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/FileUtil;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-static {v3}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->c(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ldgf;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ldgf;->a:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v2, v1}, Lcom/wandoujia/base/utils/ImageUtil;->savePicToPath(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    iget-object v0, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfpk;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 166
    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0e037b

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    const v2, 0x7f0e037c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-static {v5}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->c(Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Ldgf;->b:Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/imageviewer/activity/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
