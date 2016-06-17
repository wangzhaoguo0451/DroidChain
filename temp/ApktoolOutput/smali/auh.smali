.class public final Lauh;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Laud;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laud",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Larv;

.field private final c:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Larv;Laud;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Larv;",
            "Laud",
            "<",
            "Laqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lauh;->a:Ljava/util/concurrent/Executor;

    .line 61
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larv;

    iput-object v0, p0, Lauh;->b:Larv;

    .line 62
    invoke-static {p3}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laud;

    iput-object v0, p0, Lauh;->c:Laud;

    .line 63
    return-void
.end method

.method static a(Lcom/facebook/imagepipeline/request/ImageRequest;Laqx;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/high16 v6, 0x4500

    .line 258
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    .line 259
    if-nez v0, :cond_1

    move v0, v1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    iget v2, p1, Laqx;->d:I

    .line 267
    iget v3, p1, Laqx;->e:I

    .line 270
    if-nez v0, :cond_3

    const/high16 v0, 0x3f80

    .line 271
    :cond_2
    :goto_1
    const v2, 0x3f2aaaab

    const/high16 v3, 0x4100

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 272
    if-le v0, v1, :cond_5

    move v0, v1

    .line 273
    goto :goto_0

    .line 270
    :cond_3
    iget v4, v0, Lapu;->a:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v0, v0, Lapu;->b:I

    int-to-float v0, v0

    int-to-float v5, v3

    div-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    int-to-float v4, v2

    mul-float/2addr v4, v0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    int-to-float v0, v2

    div-float v0, v6, v0

    :cond_4
    int-to-float v2, v3

    mul-float/2addr v2, v0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    int-to-float v0, v3

    div-float v0, v6, v0

    goto :goto_1

    .line 275
    :cond_5
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lask;Laue;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lauh;->c:Laud;

    new-instance v1, Laui;

    invoke-direct {v1, p0, p1, p2}, Laui;-><init>(Lauh;Lask;Laue;)V

    invoke-interface {v0, v1, p2}, Laud;->a(Lask;Laue;)V

    .line 70
    return-void
.end method
