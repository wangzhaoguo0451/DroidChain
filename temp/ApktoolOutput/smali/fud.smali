.class final Lfud;
.super Ljava/lang/Object;
.source "PickUpGiftAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfua;


# direct methods
.method constructor <init>(Lfua;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lfud;->a:Lfua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 144
    iget-object v0, p0, Lfud;->a:Lfua;

    invoke-static {v0}, Lfua;->b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lfud;->a:Lfua;

    invoke-static {v0}, Lfua;->b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lfud;->a:Lfua;

    invoke-static {v0}, Lfua;->b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    iget-object v1, p0, Lfud;->a:Lfua;

    invoke-static {v1}, Lfua;->b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/lang/String;)V

    .line 148
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfud;->a:Lfua;

    invoke-static {v1}, Lfua;->b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    iget-object v1, p0, Lfud;->a:Lfua;

    invoke-static {v1}, Lfua;->b(Lfua;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V

    .line 156
    :cond_1
    return-void
.end method
