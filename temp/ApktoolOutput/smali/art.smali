.class public final Lart;
.super Ljava/lang/Object;
.source "PoolParams.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lart;-><init>(IILandroid/util/SparseIntArray;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 102
    iput p1, p0, Lart;->b:I

    .line 103
    iput p2, p0, Lart;->a:I

    .line 104
    iput-object p3, p0, Lart;->c:Landroid/util/SparseIntArray;

    .line 105
    iput p4, p0, Lart;->d:I

    .line 108
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
