.class final Lctd;
.super Landroid/os/AsyncTask;
.source "WandoujiaDownload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/download2/DownloadInfo2;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

.field private synthetic d:Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;


# direct methods
.method constructor <init>(Lcom/wandoujia/download2/DownloadInfo2;Ljava/util/List;Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lctd;->a:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object p2, p0, Lctd;->b:Ljava/util/List;

    iput-object p3, p0, Lctd;->c:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    iput-object p4, p0, Lctd;->d:Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 349
    sget-object v0, Lcte;->a:[I

    iget-object v1, p0, Lctd;->a:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    invoke-virtual {v1}, Lcom/wandoujia/download2/DownloadInfo2$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Lctd;->d:Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    new-instance v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    iget-object v3, p0, Lctd;->c:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 353
    :pswitch_0
    iget-object v0, p0, Lctd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 354
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 358
    :try_start_0
    iget-object v1, p0, Lctd;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lctd;->c:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/wandoujia/base/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->track_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 346
    invoke-direct {p0}, Lctd;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
