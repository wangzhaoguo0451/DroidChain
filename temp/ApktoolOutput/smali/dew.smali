.class final Ldew;
.super Lhic;
.source "DetailFragment.java"


# instance fields
.field final synthetic a:Ldev;


# direct methods
.method constructor <init>(Ldev;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Ldew;->a:Ldev;

    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 598
    invoke-virtual {p0}, Ldew;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldex;

    invoke-direct {v1, p0}, Ldex;-><init>(Ldew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    return-void
.end method
