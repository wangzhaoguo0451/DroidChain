.class public final Ldip;
.super Lhic;
.source "AppFavoriteSpinnerPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0}, Ldip;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 17
    new-instance v1, Ldgp;

    invoke-direct {v1, v0, p1}, Ldgp;-><init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 18
    return-void
.end method
