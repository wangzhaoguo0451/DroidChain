.class public final Ldev;
.super Lert;
.source "DetailFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Ldev;->g:Landroid/view/ViewGroup;

    iput-object p2, p0, Ldev;->a:Lcom/wandoujia/ripple_framework/model/Model;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lert;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lerf;
    .locals 4
    .parameter

    .prologue
    .line 594
    new-instance v0, Lerf;

    iget-object v1, p0, Ldev;->g:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v1, Ldew;

    invoke-direct {v1, p0}, Ldew;-><init>(Ldev;)V

    const v2, 0x7f0c0078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method
