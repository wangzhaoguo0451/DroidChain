.class public Lcom/wandoujia/ripple_framework/installer/install/impl/PackageInstallerAdvancedImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstallerAdvancedImpl.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lhgb;


# direct methods
.method public constructor <init>(ILhgb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput p1, p0, Lcom/wandoujia/ripple_framework/installer/install/impl/PackageInstallerAdvancedImpl$2;->a:I

    iput-object p2, p0, Lcom/wandoujia/ripple_framework/installer/install/impl/PackageInstallerAdvancedImpl$2;->b:Lhgb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 190
    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    iget v1, p0, Lcom/wandoujia/ripple_framework/installer/install/impl/PackageInstallerAdvancedImpl$2;->a:I

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/installer/install/impl/PackageInstallerAdvancedImpl$2;->b:Lhgb;

    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    invoke-static {v1}, Lhgw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lhgb;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$Session;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    goto :goto_0

    :cond_3
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lhgw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lhgb;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
