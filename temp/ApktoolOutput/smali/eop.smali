.class public final Leop;
.super Ljava/lang/Object;
.source "CardShowListView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Leop;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Leop;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;->a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowListView;)Leoq;

    move-result-object v0

    invoke-virtual {v0, p1}, Leoq;->a(Landroid/view/View;)V

    .line 89
    return-void
.end method
