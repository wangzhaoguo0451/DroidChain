.class final Lanx;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Laoe;


# instance fields
.field private synthetic a:Lanw;


# direct methods
.method constructor <init>(Lanw;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lanx;->a:Lanw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lanx;->a:Lanw;

    invoke-static {v0, p1, p2}, Lanw;->a(Lanw;ILandroid/graphics/Bitmap;)V

    .line 110
    return-void
.end method

.method public final b(I)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lanx;->a:Lanw;

    invoke-static {v0, p1}, Lanw;->a(Lanw;I)Lakk;

    move-result-object v0

    return-object v0
.end method
