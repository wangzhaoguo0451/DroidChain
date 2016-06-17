.class final Ldbk;
.super Ldz;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldz",
        "<",
        "Ljava/lang/String;",
        "Ldbm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ldz;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 22
    check-cast p1, Ldbm;

    iget-object v0, p1, Ldbm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p1, Ldbm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
