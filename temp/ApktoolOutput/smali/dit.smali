.class final Ldit;
.super Ljava/lang/Object;
.source "AppHistorySpinnerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldiq;


# direct methods
.method constructor <init>(Ldiq;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Ldit;->a:Ldiq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Ldit;->a:Ldiq;

    invoke-virtual {v0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldit;->a:Ldiq;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Ldit;->a:Ldiq;

    invoke-virtual {v0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    iget-object v1, p0, Ldit;->a:Ldiq;

    iget-object v1, v1, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->d:I

    invoke-virtual {v0, v1}, Leqw;->b(I)V

    .line 113
    :cond_0
    return-void
.end method
