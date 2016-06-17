.class public final Ldbv;
.super Landroid/os/AsyncTask;
.source "AsyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:J

.field private synthetic c:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Ldbv;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iput-object p2, p0, Ldbv;->a:Landroid/graphics/Bitmap;

    iput-wide p3, p0, Ldbv;->b:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 471
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Ldbv;->c:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-static {v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Lcom/wandoujia/image/view/AsyncImageView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Ldbv;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v0, p0, Ldbv;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Ldbv;->a:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 471
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Ldbv;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iget-wide v2, p0, Ldbv;->b:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/wandoujia/image/view/AsyncImageView;->a(Landroid/graphics/Bitmap;J)V

    return-void
.end method
