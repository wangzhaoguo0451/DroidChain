.class public final Ldei;
.super Ljava/lang/Object;
.source "DetailAppHistoryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/api/proto/ApkDetail;

.field private synthetic b:Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;Lcom/wandoujia/api/proto/ApkDetail;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Ldei;->b:Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;

    iput-object p2, p0, Ldei;->a:Lcom/wandoujia/api/proto/ApkDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Ldei;->b:Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;

    iget-object v1, p0, Ldei;->a:Lcom/wandoujia/api/proto/ApkDetail;

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->a(Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;Lcom/wandoujia/api/proto/ApkDetail;)Lcom/wandoujia/api/proto/ApkDetail;

    .line 165
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Ldei;->b:Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->a(Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;Z)V

    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 169
    return-void
.end method
