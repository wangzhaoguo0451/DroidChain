.class public final Ldoa;
.super Lhic;
.source "HistoryVersionButtonPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Ldoa;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldob;

    invoke-direct {v1, p1, p1}, Ldob;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
