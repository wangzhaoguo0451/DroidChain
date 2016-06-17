.class public final Ldse;
.super Lhic;
.source "SuggestionActionPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter

    .prologue
    .line 24
    new-instance v0, Ldsf;

    invoke-direct {v0, p1}, Ldsf;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 38
    invoke-virtual {p0}, Ldse;->e()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wdj://search/result/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lhhl;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 44
    invoke-virtual {p0}, Ldse;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
