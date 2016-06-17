.class public final Ldmf;
.super Lhic;
.source "DetailVerticalLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0c0023

    .line 17
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ldmf;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Ldmf;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    goto :goto_0
.end method
