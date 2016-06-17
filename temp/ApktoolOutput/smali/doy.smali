.class public final Ldoy;
.super Lhic;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0c0078

    .line 900
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Ldoy;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Ldoy;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    goto :goto_0
.end method
