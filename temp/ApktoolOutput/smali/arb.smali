.class public final Larb;
.super Ljava/lang/Object;
.source "BasePool.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 738
    iget v0, p0, Larb;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Larb;->a:I

    .line 739
    iget v0, p0, Larb;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Larb;->b:I

    .line 740
    return-void
.end method

.method public final b(I)V
    .locals 5
    .parameter

    .prologue
    .line 747
    iget v0, p0, Larb;->b:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Larb;->a:I

    if-lez v0, :cond_0

    .line 748
    iget v0, p0, Larb;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Larb;->a:I

    .line 749
    iget v0, p0, Larb;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Larb;->b:I

    .line 758
    :goto_0
    return-void

    .line 751
    :cond_0
    const-string v0, "com.facebook.imagepipeline.common.BasePool.Counter"

    const-string v1, "Unexpected decrement of %d. Current numBytes = %d, count = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Larb;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Larb;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lakf;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
