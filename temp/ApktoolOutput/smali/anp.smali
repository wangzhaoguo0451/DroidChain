.class public final Lanp;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# instance fields
.field final a:Lanm;

.field public b:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanm;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lanp;->a:Lanm;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lano;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    :try_start_0
    new-instance v0, Lano;

    invoke-direct {v0, p0}, Lano;-><init>(Lanp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v1, p0, Lanp;->b:Lakk;

    invoke-static {v1}, Lakk;->c(Lakk;)V

    .line 118
    iput-object v2, p0, Lanp;->b:Lakk;

    .line 119
    iget-object v1, p0, Lanp;->c:Ljava/util/List;

    invoke-static {v1}, Lakk;->a(Ljava/lang/Iterable;)V

    .line 120
    iput-object v2, p0, Lanp;->c:Ljava/util/List;

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanp;->b:Lakk;

    invoke-static {v1}, Lakk;->c(Lakk;)V

    .line 118
    iput-object v2, p0, Lanp;->b:Lakk;

    .line 119
    iget-object v1, p0, Lanp;->c:Ljava/util/List;

    invoke-static {v1}, Lakk;->a(Ljava/lang/Iterable;)V

    .line 120
    iput-object v2, p0, Lanp;->c:Ljava/util/List;

    throw v0
.end method
