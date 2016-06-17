.class public final Ldrz;
.super Lhic;
.source "FeedBackPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0}, Ldrz;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldsa;

    invoke-direct {v1}, Ldsa;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
