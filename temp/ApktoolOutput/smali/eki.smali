.class final Leki;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Leki;->a:Lejy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Leki;->a:Lejy;

    iget-boolean v0, v0, Lejy;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leki;->a:Lejy;

    iget-object v1, v1, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Leki;->a:Lejy;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "long_click_local_app"

    invoke-static {v0, p1, v1, v2}, Lejy;->a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 265
    new-instance v0, Legr;

    iget-object v1, p0, Leki;->a:Lejy;

    iget-object v1, v1, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leki;->a:Lejy;

    iget-object v2, v2, Lejy;->b:Leiu;

    invoke-interface {v2}, Leiu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Legr;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Leki;->a:Lejy;

    iget-object v1, v1, Lejy;->d:Ljava/lang/String;

    iget-object v2, p0, Leki;->a:Lejy;

    iget v2, v2, Lejy;->e:I

    invoke-virtual {v0, v1, v2}, Legr;->a(Ljava/lang/String;I)Legr;

    move-result-object v0

    invoke-virtual {v0}, Legr;->a()V

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
