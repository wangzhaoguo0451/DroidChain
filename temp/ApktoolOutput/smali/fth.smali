.class final Lfth;
.super Ljava/lang/Object;
.source "NetworkExpandableListAsyncloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lftg;


# direct methods
.method constructor <init>(Lftg;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lfth;->b:Lftg;

    iput p2, p0, Lfth;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lfth;->b:Lftg;

    iget-object v0, v0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ld;->g(Landroid/view/View;)V

    .line 90
    iget v0, p0, Lfth;->a:I

    if-lez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->f()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lfth;->b:Lftg;

    iget-object v0, v0, Lftg;->a:Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->requestLoad()V

    goto :goto_0
.end method
