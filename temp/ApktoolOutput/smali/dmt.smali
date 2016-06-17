.class public final Ldmt;
.super Lhic;
.source "DownloadNavigatePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lhic;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Ldmt;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldmu;

    invoke-direct {v1, p0}, Ldmu;-><init>(Ldmt;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
