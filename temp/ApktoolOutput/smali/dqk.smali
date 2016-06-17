.class public final Ldqk;
.super Lhic;
.source "SharePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Ldqk;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0468

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    new-instance v1, Ldql;

    invoke-direct {v1, p0, p1, p1}, Ldql;-><init>(Ldqk;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Leri;->a(Landroid/view/View$OnClickListener;)Leri;

    .line 85
    return-void
.end method
