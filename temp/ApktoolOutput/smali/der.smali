.class final Lder;
.super Lhic;
.source "DetailFragment.java"


# instance fields
.field final synthetic a:Ldeo;


# direct methods
.method constructor <init>(Ldeo;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lder;->a:Ldeo;

    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 519
    invoke-virtual {p0}, Lder;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldes;

    invoke-direct {v1, p0}, Ldes;-><init>(Lder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    return-void
.end method
