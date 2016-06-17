.class public final Leiy;
.super Ljava/lang/Object;
.source "StatefulButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Leiw;

.field private synthetic b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;Leiw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Leiy;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iput-object p2, p0, Leiy;->a:Leiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Leiy;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-boolean v0, v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Leiy;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setEnabled(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Leiy;->a:Leiw;

    iget-object v0, v0, Leiw;->c:Lcom/wandoujia/mvc/Action;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Leiy;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    iget-object v1, p0, Leiy;->a:Leiw;

    invoke-static {v0, p1, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;Landroid/view/View;Leiw;)V

    .line 103
    iget-object v0, p0, Leiy;->a:Leiw;

    iget-object v0, v0, Leiw;->c:Lcom/wandoujia/mvc/Action;

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 105
    :cond_1
    return-void
.end method
