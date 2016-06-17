.class public final Ldpw;
.super Lhic;
.source "SearchExpandPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Ldpw;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldpx;

    invoke-direct {v1, p0, p1, p1}, Ldpx;-><init>(Ldpw;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
