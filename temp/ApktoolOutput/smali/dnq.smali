.class final Ldnq;
.super Ljava/lang/Object;
.source "GuessCardPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic c:Ldnp;


# direct methods
.method constructor <init>(Ldnp;Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Ldnq;->c:Ldnp;

    iput-object p2, p0, Ldnq;->a:Landroid/view/View;

    iput-object p3, p0, Ldnq;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 29
    iget-object v0, p0, Ldnq;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Ldnq;->c:Ldnp;

    invoke-virtual {v0}, Ldnp;->b()Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    .line 31
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iput v5, v1, Lhht;->a:I

    .line 32
    iget-object v1, p0, Ldnq;->c:Ldnp;

    invoke-virtual {v1}, Lhic;->g()Lhas;

    move-result-object v1

    iget-object v1, v1, Lhas;->a:Leqw;

    invoke-static {v1, v0}, Ld;->a(Leqw;Lcom/wandoujia/ripple_framework/model/Model;)I

    move-result v1

    .line 33
    if-ltz v1, :cond_1

    iget-object v2, p0, Ldnq;->c:Ldnp;

    invoke-virtual {v2}, Lhic;->g()Lhas;

    move-result-object v2

    iget-object v2, v2, Lhas;->a:Leqw;

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Ldnq;->c:Ldnp;

    invoke-virtual {v2}, Ldnp;->e()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lj;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    const v3, 0x7f0c0011

    sget-object v4, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->FLIP_RIGHT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    :cond_0
    iget-object v2, p0, Ldnq;->c:Ldnp;

    invoke-virtual {v2}, Lhic;->g()Lhas;

    move-result-object v2

    iget-object v2, v2, Lhas;->a:Leqw;

    invoke-virtual {v2, v1, v0}, Leqw;->a(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Ldnq;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-boolean v0, v0, Lhht;->e:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Ldnq;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iput-boolean v5, v0, Lhht;->e:Z

    .line 44
    :cond_1
    return-void
.end method
