.class final Ldeu;
.super Lhhl;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Ldet;


# direct methods
.method constructor <init>(Ldet;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Ldeu;->a:Ldet;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Ldeu;->a:Ldet;

    iget-object v0, v0, Ldet;->a:Ldeo;

    iget-object v0, v0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->k(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/SwipeBackContainer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return v1

    .line 510
    :cond_0
    iget-object v0, p0, Ldeu;->a:Ldet;

    iget-object v0, v0, Ldet;->a:Ldeo;

    iget-object v0, v0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->l(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    goto :goto_0
.end method
