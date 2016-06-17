.class public final Lfas;
.super Ljava/lang/Object;
.source "StatefulButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfaq;

.field private synthetic b:Lcom/wandoujia/p4/button/views/StatefulButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/button/views/StatefulButton;Lfaq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lfas;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object p2, p0, Lfas;->a:Lfaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lfas;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    iget-boolean v0, v0, Lcom/wandoujia/p4/button/views/StatefulButton;->a:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lfas;->b:Lcom/wandoujia/p4/button/views/StatefulButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setEnabled(Z)V

    .line 89
    :cond_0
    iget-object v0, p0, Lfas;->a:Lfaq;

    iget-object v0, v0, Lfaq;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lfas;->a:Lfaq;

    iget-object v0, v0, Lfaq;->d:Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/Action;

    .line 93
    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lfas;->a:Lfaq;

    iget-object v0, v0, Lfaq;->c:Lcom/wandoujia/mvc/Action;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lfas;->a:Lfaq;

    iget-object v0, v0, Lfaq;->c:Lcom/wandoujia/mvc/Action;

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 99
    :cond_2
    return-void
.end method
