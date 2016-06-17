.class final Ldet;
.super Lhic;
.source "DetailFragment.java"


# instance fields
.field final synthetic a:Ldeo;


# direct methods
.method constructor <init>(Ldeo;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Ldet;->a:Ldeo;

    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 504
    invoke-virtual {p0}, Ldet;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldeu;

    invoke-direct {v1, p0}, Ldeu;-><init>(Ldet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    return-void
.end method
