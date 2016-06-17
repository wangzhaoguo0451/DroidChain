.class public abstract Lerj;
.super Leol;
.source "BaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leol;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Leol;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    if-eqz p2, :cond_1

    .line 26
    invoke-static {p2}, Lery;->b(Landroid/view/View;)Lerk;

    move-result-object v0

    .line 27
    invoke-virtual {p0, p1}, Lerj;->getItemViewType(I)I

    move-result v1

    .line 28
    iget v2, v0, Lerk;->b:I

    if-eq v2, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p3}, Lerj;->a(ILandroid/view/ViewGroup;)Lerk;

    move-result-object v0

    .line 30
    iput v1, v0, Lerk;->b:I

    .line 31
    iget-object v1, v0, Lerk;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lery;->a(Landroid/view/View;Lerk;)V

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lerj;->a(ILerk;)V

    .line 40
    iget-object v0, v0, Lerk;->a:Landroid/view/View;

    return-object v0

    .line 34
    :cond_1
    invoke-virtual {p0, p1, p3}, Lerj;->a(ILandroid/view/ViewGroup;)Lerk;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p1}, Lerj;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lerk;->b:I

    .line 36
    iget-object v1, v0, Lerk;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lery;->a(Landroid/view/View;Lerk;)V

    goto :goto_0
.end method

.method protected abstract a(ILandroid/view/ViewGroup;)Lerk;
.end method

.method public a()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lerj;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lerj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lerj;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method protected abstract a(ILerk;)V
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lerj;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lerj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lerj;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method
