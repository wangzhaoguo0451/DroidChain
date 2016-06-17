.class final Ldir;
.super Ljava/lang/Object;
.source "AppHistorySpinnerPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field final synthetic b:Ldiq;

.field private c:Landroid/widget/Adapter;


# direct methods
.method constructor <init>(Ldiq;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Ldir;->b:Ldiq;

    iput-object p2, p0, Ldir;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ldir;->c:Landroid/widget/Adapter;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Ldir;->c:Landroid/widget/Adapter;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iput-object v0, p0, Ldir;->c:Landroid/widget/Adapter;

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Ldis;

    invoke-direct {v0, p0}, Ldis;-><init>(Ldir;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method
