.class public final Lftb;
.super Ljava/lang/Object;
.source "NetworkAsyncLoadPageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lftb;->b:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    iput p2, p0, Lftb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {v0}, Ld;->g(Landroid/view/View;)V

    .line 407
    iget v0, p0, Lftb;->a:I

    if-lez v0, :cond_0

    .line 408
    iget-object v0, p0, Lftb;->b:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lftb;->b:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->requestLoad()V

    goto :goto_0
.end method
