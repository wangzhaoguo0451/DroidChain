.class final Ldnu;
.super Ljava/lang/Object;
.source "GuessPresenter.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:I

.field private synthetic c:Ldns;


# direct methods
.method constructor <init>(Ldns;Lcom/wandoujia/ripple_framework/model/Model;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Ldnu;->c:Ldns;

    iput-object p2, p0, Ldnu;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iput p3, p0, Ldnu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 166
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    iget-object v0, p0, Ldnu;->c:Ldns;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldnu;->c:Ldns;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget v0, v0, Lhht;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldnu;->c:Ldns;

    iget-object v1, p0, Ldnu;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, p1, v1}, Ldns;->a(Lcom/wandoujia/api/proto/HttpResponse;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ldns;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    const-string v2, "com.wandoujia.game_launcher"

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ldnu;->c:Ldns;

    invoke-virtual {v1, v0}, Ldns;->c(Lcom/wandoujia/ripple_framework/model/Model;)V

    :cond_2
    iget v1, p0, Ldnu;->b:I

    if-ltz v1, :cond_4

    iget-object v1, p0, Ldnu;->c:Ldns;

    invoke-virtual {v1}, Lhic;->g()Lhas;

    move-result-object v1

    iget-object v1, v1, Lhas;->a:Leqw;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ldnu;->c:Ldns;

    invoke-virtual {v1}, Ldns;->e()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const v2, 0x7f0c0011

    sget-object v3, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->NORMAL:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Ldnu;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    const/4 v2, 0x1

    iput v2, v1, Lhht;->a:I

    iget-object v1, p0, Ldnu;->c:Ldns;

    invoke-virtual {v1}, Lhic;->g()Lhas;

    move-result-object v1

    iget-object v1, v1, Lhas;->a:Leqw;

    iget v2, p0, Ldnu;->b:I

    invoke-virtual {v1, v2, v0}, Leqw;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldnu;->c:Ldns;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldns;->a(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method
