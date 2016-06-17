.class public abstract Lazh;
.super Ljava/lang/Object;


# instance fields
.field final a:Lazi;


# virtual methods
.method final a()V
    .locals 0

    invoke-virtual {p0}, Lazh;->b()V

    return-void
.end method

.method final a(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lazh;->b()V

    return-void
.end method

.method protected abstract b()V
.end method
