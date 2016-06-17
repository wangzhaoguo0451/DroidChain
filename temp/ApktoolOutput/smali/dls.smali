.class final Ldls;
.super Ljava/lang/Object;
.source "DetailGuessPresenter.java"

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

.field private synthetic c:Ldlr;


# direct methods
.method constructor <init>(Ldlr;Lcom/wandoujia/ripple_framework/model/Model;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Ldls;->c:Ldlr;

    iput-object p2, p0, Ldls;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iput p3, p0, Ldls;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 122
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    iget-object v0, p0, Ldls;->c:Ldlr;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldls;->c:Ldlr;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget v0, v0, Lhht;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ldls;->c:Ldlr;

    iget-object v0, v0, Lhic;->i:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget v0, v0, Lhht;->a:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldls;->c:Ldlr;

    iget-object v2, p0, Ldls;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, p1, v2}, Ldlr;->a(Lcom/wandoujia/api/proto/HttpResponse;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iget-object v0, v0, Lhht;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->LOGIN:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    :goto_1
    if-ne v0, v1, :cond_2

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ldlr;->b(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    const-string v3, "com.wandoujia.game_launcher"

    invoke-virtual {v1, v3}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ldls;->c:Ldlr;

    invoke-virtual {v1, v2}, Ldlr;->c(Lcom/wandoujia/ripple_framework/model/Model;)V

    :cond_2
    iget v1, p0, Ldls;->b:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Ldls;->c:Ldlr;

    invoke-virtual {v1}, Lhic;->g()Lhas;

    move-result-object v1

    iget-object v1, v1, Lhas;->a:Leqw;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldls;->c:Ldlr;

    invoke-virtual {v1}, Ldlr;->e()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const v3, 0x7f0c0011

    sget-object v4, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->NORMAL:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Ldls;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->n:Lhht;

    iput v0, v1, Lhht;->a:I

    iget-object v0, p0, Ldls;->c:Ldlr;

    invoke-virtual {v0}, Lhic;->g()Lhas;

    move-result-object v0

    iget-object v0, v0, Lhas;->a:Leqw;

    iget v1, p0, Ldls;->b:I

    invoke-virtual {v0, v1, v2}, Leqw;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ldls;->c:Ldlr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldlr;->a(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method
