.class public final Lfax;
.super Lhhl;
.source "SubActionButton.java"


# instance fields
.field private synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lfax;->a:Ljava/util/List;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lfax;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lfax;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lfaz;

    .line 124
    iget-object v0, v7, Lfaz;->b:Lcom/wandoujia/mvc/Action;

    if-eqz v0, :cond_0

    .line 126
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SUB_ACTION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v5, v7, Lfaz;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lfax;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 132
    iget-object v0, v7, Lfaz;->b:Lcom/wandoujia/mvc/Action;

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 133
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
