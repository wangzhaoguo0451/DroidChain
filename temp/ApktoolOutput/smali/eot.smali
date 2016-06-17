.class public final Leot;
.super Ljava/lang/Object;
.source "CardShowRecyclerView.java"

# interfaces
.implements Leos;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Leot;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Leot;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)Leow;

    move-result-object v0

    iget-object v0, v0, Leow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Leot;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)Leow;

    move-result-object v0

    invoke-virtual {v0, p1}, Leow;->a(Landroid/view/View;)Leox;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method

.method public final a(Landroid/view/View;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Leot;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;->a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowRecyclerView;)Leow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Leow;->a(Landroid/view/View;J)V

    .line 20
    return-void
.end method
