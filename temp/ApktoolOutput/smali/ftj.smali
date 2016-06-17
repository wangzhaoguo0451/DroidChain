.class public final Lftj;
.super Ljava/lang/Object;
.source "NetworkListAsyncloadFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lftj;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->o()Z

    .line 118
    add-int v0, p3, p2

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lftj;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->d:Leun;

    invoke-virtual {v0}, Leun;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lftj;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0, p4}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lftj;->a:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->o()Z

    .line 165
    return-void
.end method
