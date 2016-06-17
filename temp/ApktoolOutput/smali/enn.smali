.class public abstract Lenn;
.super Lad;
.source "LogFragmentStatePagerAdapter.java"

# interfaces
.implements Leoh;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lad;-><init>(Ls;)V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lenn;->b:Landroid/util/SparseArray;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lad;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 23
    instance-of v0, v1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 24
    iget-object v2, p0, Lenn;->b:Landroid/util/SparseArray;

    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    :cond_0
    return-object v1
.end method

.method public final c(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lenn;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
