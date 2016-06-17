.class final Ldep;
.super Lhic;
.source "DetailFragment.java"


# instance fields
.field final synthetic a:Ldeo;


# direct methods
.method constructor <init>(Ldeo;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Ldep;->a:Ldeo;

    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Ldep;->a:Ldeo;

    iget-object v0, v0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->p(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Ldep;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :goto_0
    invoke-virtual {p0}, Ldep;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldeq;

    invoke-direct {v1, p0, p1}, Ldeq;-><init>(Ldep;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    return-void

    .line 536
    :cond_0
    invoke-virtual {p0}, Ldep;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
