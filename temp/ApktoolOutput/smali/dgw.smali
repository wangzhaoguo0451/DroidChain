.class final Ldgw;
.super Ljava/lang/Object;
.source "AppUpgradeOpenSpinnerAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ldgv;


# direct methods
.method constructor <init>(Ldgv;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Ldgw;->a:Ldgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Ldgw;->a:Ldgv;

    invoke-static {v1}, Ldgv;->a(Ldgv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ldgw;->a:Ldgv;

    sget-object v1, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v3, p0, Ldgw;->a:Ldgv;

    invoke-static {v3}, Ldgv;->a(Ldgv;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ldgv;->a(Ldgv;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 99
    return-void
.end method
