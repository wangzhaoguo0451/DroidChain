.class final Ldnb;
.super Lhhl;
.source "ExpandLinePresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Ldna;


# direct methods
.method constructor <init>(Ldna;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Ldnb;->b:Ldna;

    iput-object p3, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 41
    if-nez v0, :cond_0

    move v0, v1

    .line 42
    :goto_0
    iget-object v3, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 43
    iget-object v1, p0, Ldnb;->b:Ldna;

    iget-object v3, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1, v3, v0}, Ldna;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)V

    .line 45
    iget-object v3, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Ldnb;->b:Ldna;

    iget-object v1, v1, Ldna;->a:Lhas;

    iget-object v1, v1, Lhas;->a:Leqw;

    invoke-virtual {v1}, Leqw;->c()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 46
    :goto_2
    if-gez v1, :cond_3

    .line 55
    :goto_3
    return v2

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_2

    .line 49
    :cond_3
    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Ldnb;->b:Ldna;

    iget-object v0, v0, Ldna;->a:Lhas;

    iget-object v0, v0, Lhas;->a:Leqw;

    iget-object v3, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v3, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Leqw;->a(ILjava/util/List;)V

    goto :goto_3

    .line 52
    :cond_4
    iget-object v0, p0, Ldnb;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    iget-object v3, p0, Ldnb;->b:Ldna;

    iget-object v3, v3, Ldna;->a:Lhas;

    iget-object v3, v3, Lhas;->a:Leqw;

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1, v0}, Leqw;->a(II)V

    goto :goto_3
.end method
