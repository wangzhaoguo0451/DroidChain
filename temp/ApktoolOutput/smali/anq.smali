.class public abstract Lanq;
.super Ljava/lang/Object;
.source "DelegatingAnimatedDrawableBackend.java"

# interfaces
.implements Lani;


# instance fields
.field private final a:Lani;


# direct methods
.method public constructor <init>(Lani;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lanq;->a:Lani;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Lano;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->a()Lano;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1}, Lani;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1, p2}, Lani;->a(ILandroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->b()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1}, Lani;->b(I)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->c()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1}, Lani;->c(I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->d()I

    move-result v0

    return v0
.end method

.method public final d(I)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1}, Lani;->d(I)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->e()I

    move-result v0

    return v0
.end method

.method public final e(I)Lakk;
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
    .line 110
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1}, Lani;->e(I)Lakk;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->f()I

    move-result v0

    return v0
.end method

.method public final f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0, p1}, Lani;->f(I)Z

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->g()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->h()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lanq;->a:Lani;

    invoke-interface {v0}, Lani;->i()V

    .line 121
    return-void
.end method
