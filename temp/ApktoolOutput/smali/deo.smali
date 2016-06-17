.class public final Ldeo;
.super Lert;
.source "DetailFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

.field private synthetic g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Ldeo;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    iput-object p2, p0, Ldeo;->g:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lert;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lerf;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 500
    new-instance v0, Lerf;

    iget-object v1, p0, Ldeo;->g:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v1, Ldet;

    invoke-direct {v1, p0}, Ldet;-><init>(Ldeo;)V

    const v2, 0x7f0c0012

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Lder;

    invoke-direct {v1, p0}, Lder;-><init>(Ldeo;)V

    const v2, 0x7f0c0332

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldep;

    invoke-direct {v1, p0}, Ldep;-><init>(Ldeo;)V

    const v2, 0x7f0c0334

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldnc;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ldnc;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0333

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method
