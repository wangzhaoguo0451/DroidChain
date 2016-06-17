.class final Lfbf;
.super Ljava/lang/Object;
.source "CampaignPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

.field private synthetic b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lfbe;


# direct methods
.method constructor <init>(Lfbe;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lfbf;->d:Lfbe;

    iput-object p2, p0, Lfbf;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iput-object p3, p0, Lfbf;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iput-object p4, p0, Lfbf;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 115
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v1, p0, Lfbf;->d:Lfbe;

    invoke-static {v1}, Lfbe;->a(Lfbe;)Landroid/webkit/WebView;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    iget-object v3, p0, Lfbf;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    iget-object v4, p0, Lfbf;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v5, p0, Lfbf;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    iget-object v1, p0, Lfbf;->d:Lfbe;

    invoke-static {v1}, Lfbe;->a(Lfbe;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    .line 118
    return-void
.end method
