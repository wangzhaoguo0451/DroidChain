.class public final Lejc;
.super Ljava/lang/Object;
.source "DataPacketDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lejc;->a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v1, p0, Lejc;->a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;

    iget-object v0, p0, Lejc;->a:Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->a:Lejg;

    iget v2, v0, Lejg;->a:I

    invoke-virtual {v0, v2}, Lejg;->b(I)Lejh;

    move-result-object v0

    iget-object v2, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    if-eqz v2, :cond_1

    new-instance v2, Leet;

    invoke-direct {v2}, Leet;-><init>()V

    iget-object v3, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v3}, Lcom/wandoujia/entities/app/ExtensionPack;->getFilepath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extract_path"

    invoke-virtual {v2, v4, v3}, Leet;->a(Ljava/lang/String;Ljava/lang/String;)Lees;

    iget-object v3, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v3}, Lcom/wandoujia/entities/app/ExtensionPack;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Leet;->b(I)Leet;

    iget-object v3, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v3}, Lcom/wandoujia/entities/app/ExtensionPack;->getType()I

    move-result v3

    const-string v4, "gpu_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Leet;->a(Ljava/lang/String;Ljava/lang/String;)Lees;

    sget-object v3, Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;->PF5:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    iget-object v4, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/ExtensionPack;->getPf5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Leet;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;Ljava/lang/String;)Lees;

    iget-object v3, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v3}, Lcom/wandoujia/entities/app/ExtensionPack;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lees;->a:Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->DATA_PACKET:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iput-object v3, v2, Lees;->e:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    iget-object v3, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v3}, Lcom/wandoujia/entities/app/ExtensionPack;->getSize()J

    move-result-wide v4

    iput-wide v4, v2, Lees;->g:J

    iget-object v0, v0, Lejh;->c:Lcom/wandoujia/entities/app/ExtensionPack;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/ExtensionPack;->getSize()J

    move-result-wide v4

    invoke-static {}, Lg;->m()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lees;->f:Z

    iget-object v0, v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->c:Lejf;

    invoke-virtual {v2}, Leet;->a()Lcom/wandoujia/launcher_base/download/DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejf;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    .line 95
    :goto_1
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/wandoujia/launcher_base/view/dialog/DataPacketDialog;->c:Lejf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lejf;->a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    goto :goto_1
.end method
