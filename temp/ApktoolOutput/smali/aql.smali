.class public abstract Laql;
.super Lala;
.source "BaseBitmapDataSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lala",
        "<",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lala;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public final d(Lalb;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lalb;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lalb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Laqu;

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqu;

    invoke-virtual {v1}, Laqu;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Laql;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {v0}, Lakk;->c(Lakk;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lakk;->c(Lakk;)V

    throw v1
.end method
