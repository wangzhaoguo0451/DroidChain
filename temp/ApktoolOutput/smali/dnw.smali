.class public final Ldnw;
.super Ldld;
.source "GuessSectionCardShowPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ldld;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    if-nez v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1}, Ldld;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0
.end method

.method protected final b(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-boolean v0, v0, Lhht;->e:Z

    return v0
.end method

.method protected final c(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhht;->e:Z

    .line 26
    return-void
.end method
