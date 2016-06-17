.class final Ldwp;
.super Ljava/lang/Object;
.source "SuffixResolveUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Ldwp;->a:Ljava/lang/String;

    iput-object p2, p0, Ldwp;->b:Ljava/lang/String;

    iput-object p3, p0, Ldwp;->c:Ljava/lang/String;

    iput-object p4, p0, Ldwp;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldwp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v0, p0, Ldwp;->b:Ljava/lang/String;

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    iget-object v0, p0, Ldwp;->a:Ljava/lang/String;

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    iget-object v0, p0, Ldwp;->a:Ljava/lang/String;

    iput-object v0, v1, Lhby;->j:Ljava/lang/String;

    iget-object v0, p0, Ldwp;->c:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    iget-object v0, p0, Ldwp;->d:Ljava/lang/String;

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 193
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 195
    return-void
.end method
