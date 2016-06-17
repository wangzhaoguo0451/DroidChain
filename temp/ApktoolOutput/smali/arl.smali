.class public Larl;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "GenericByteArrayPool.java"

# interfaces
.implements Larp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool",
        "<[B>;",
        "Larp;"
    }
.end annotation


# instance fields
.field private final b:[I


# direct methods
.method public constructor <init>(Lmv;Lart;Lmv;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lmv;Lart;Lmv;)V

    .line 44
    iget-object v1, p2, Lart;->c:Landroid/util/SparseIntArray;

    .line 45
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Larl;->b:[I

    .line 46
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 47
    iget-object v2, p0, Larl;->b:[I

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    new-array v0, p1, [B

    return-object v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    check-cast p1, [B

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final c(I)I
    .locals 4
    .parameter

    .prologue
    .line 102
    .line 103
    if-gtz p1, :cond_0

    .line 104
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 108
    :cond_0
    iget-object v2, p0, Larl;->b:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 109
    if-lt v0, p1, :cond_2

    move p1, v0

    .line 116
    :cond_1
    return p1

    .line 108
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final synthetic c(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    check-cast p1, [B

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    return v0
.end method

.method protected final d(I)I
    .locals 0
    .parameter

    .prologue
    .line 87
    return p1
.end method
