.class final Ldlt;
.super Ljava/lang/Object;
.source "DetailGuessPresenter.java"

# interfaces
.implements Lagt;


# instance fields
.field private synthetic a:Ldlr;


# direct methods
.method constructor <init>(Ldlr;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Ldlt;->a:Ldlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Ldlt;->a:Ldlr;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldlt;->a:Ldlr;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget v0, v0, Lhht;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Ldlt;->a:Ldlr;

    invoke-virtual {v0, p1}, Ldlr;->a(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method
