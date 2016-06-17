.class final Lasq;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lath;


# instance fields
.field private synthetic a:Laue;

.field private synthetic b:Lasp;


# direct methods
.method constructor <init>(Lasp;Laue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lasq;->b:Lasp;

    iput-object p2, p0, Lasq;->a:Laue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laqx;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 119
    if-eqz p1, :cond_3

    .line 120
    iget-object v0, p0, Lasq;->b:Lasp;

    iget-object v0, v0, Lasp;->c:Lasm;

    iget-boolean v0, v0, Lasm;->c:Z

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lasq;->a:Laue;

    invoke-interface {v0}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lasq;->b:Lasp;

    iget-object v0, v0, Lasp;->c:Lasm;

    iget-boolean v0, v0, Lasm;->d:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-static {v0}, Ld;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    :cond_0
    invoke-static {p1}, Laqx;->c(Laqx;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :cond_1
    iput v0, p1, Laqx;->f:I

    .line 128
    :cond_2
    iget-object v0, p0, Lasq;->b:Lasp;

    invoke-static {v0, p1, p2}, Lasp;->a(Lasp;Laqx;Z)V

    .line 130
    :cond_3
    return-void

    .line 124
    :cond_4
    invoke-static {p1}, Laqx;->c(Laqx;)Z

    move-result v0

    invoke-static {v0}, Ld;->a(Z)V

    iget-object v2, v1, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    if-eqz v2, :cond_5

    iget v0, v2, Lapu;->b:I

    if-lez v0, :cond_5

    iget v0, v2, Lapu;->a:I

    if-lez v0, :cond_5

    iget v0, p1, Laqx;->d:I

    if-eqz v0, :cond_5

    iget v0, p1, Laqx;->e:I

    if-nez v0, :cond_6

    :cond_5
    const/high16 v0, 0x3f80

    :goto_0
    iget-object v1, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v1, v2, :cond_9

    const v1, 0x3f2aaaab

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    const/4 v0, 0x1

    :goto_1
    iget v1, p1, Laqx;->e:I

    iget v2, p1, Laqx;->d:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    div-int v2, v1, v0

    int-to-float v2, v2

    const/high16 v3, 0x4500

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p1, Laqx;->b:Lcom/facebook/imageformat/ImageFormat;

    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v2, v3, :cond_c

    mul-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_6
    iget v3, p1, Laqx;->d:I

    iget v4, p1, Laqx;->e:I

    iget v0, v2, Lapu;->a:I

    int-to-float v0, v0

    int-to-float v5, v3

    div-float v5, v0, v5

    iget v0, v2, Lapu;->b:I

    int-to-float v0, v0

    int-to-float v6, v4

    div-float v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const-string v7, "DownsampleUtil"

    const-string v8, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f for %s"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v2, Lapu;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v2, v2, Lapu;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget-object v1, v1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    invoke-static {v7, v8, v9}, Lakf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x2

    :goto_3
    const-wide/high16 v2, 0x3ff0

    mul-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    mul-int/lit8 v6, v1, 0x2

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3fd5555560000000L

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    float-to-double v4, v0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_8

    move v0, v1

    goto/16 :goto_1

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_9
    const v1, 0x3f2aaaab

    cmpl-float v1, v0, v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x2

    :goto_4
    const-wide/high16 v2, 0x3ff0

    int-to-double v4, v1

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v1

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    int-to-double v6, v1

    div-double/2addr v4, v6

    const-wide v6, 0x3fd5555560000000L

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    float-to-double v4, v0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_b

    add-int/lit8 v0, v1, -0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method
