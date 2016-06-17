.class public final Laze;
.super Lbki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbki",
        "<",
        "Lazi;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
