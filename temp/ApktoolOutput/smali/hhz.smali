.class public final Lhhz;
.super Ljava/lang/Object;
.source "ObjectHolder.java"


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lhhz;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lhhz;->a:Landroid/util/SparseArray;

    iget v1, p0, Lhhz;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27
    iget v0, p0, Lhhz;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lhhz;->b:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lhhz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lhhz;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    return-object v0
.end method
