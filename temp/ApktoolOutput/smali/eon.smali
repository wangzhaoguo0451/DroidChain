.class public final Leon;
.super Ljava/lang/Object;
.source "CardShowGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Leon;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Leon;->a:Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;

    invoke-static {v0}, Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;->a(Lcom/wandoujia/logv3/toolkit/cardshow/CardShowGridView;)Leoq;

    move-result-object v0

    invoke-virtual {v0, p1}, Leoq;->a(Landroid/view/View;)V

    .line 90
    return-void
.end method
