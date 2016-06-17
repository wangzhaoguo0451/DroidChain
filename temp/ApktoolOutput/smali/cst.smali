.class public final Lcst;
.super Landroid/os/AsyncTask;
.source "AppDownloadTask2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/download2/AppDownloadTask2;


# direct methods
.method public constructor <init>(Lcom/wandoujia/download2/AppDownloadTask2;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 325
    const/4 v2, 0x0

    .line 327
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v0, v0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :try_start_1
    invoke-static {v1}, Lcom/wandoujia/base/utils/MD5Utils;->md5Digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/wandoujia/download2/AppDownloadTask2;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5 check source md5 = %s, target md5 = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-static {v6}, Lcom/wandoujia/download2/AppDownloadTask2;->a(Lcom/wandoujia/download2/AppDownloadTask2;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v2, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-static {v2}, Lcom/wandoujia/download2/AppDownloadTask2;->a(Lcom/wandoujia/download2/AppDownloadTask2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 340
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 350
    :goto_0
    return-object v0

    .line 334
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v2, v2, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "md5 check source md5 = %s, target md5 = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-static {v7}, Lcom/wandoujia/download2/AppDownloadTask2;->a(Lcom/wandoujia/download2/AppDownloadTask2;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 340
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 349
    :cond_1
    :goto_1
    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v0, v0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 350
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 338
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v2, v2, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 340
    if-eqz v1, :cond_1

    .line 342
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    goto :goto_1

    .line 340
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 342
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 344
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 340
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 337
    :catch_5
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcst;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 322
    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v0, v0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    const/16 v1, 0x64

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v0, v0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->SUCCEED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcss;->a:[I

    iget-object v1, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-static {v1}, Lcom/wandoujia/download2/AppDownloadTask2;->b(Lcom/wandoujia/download2/AppDownloadTask2;)Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v0, v0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-static {v0}, Lcom/wandoujia/download2/AppDownloadTask2;->c(Lcom/wandoujia/download2/AppDownloadTask2;)Lcom/wandoujia/net/AsyncHttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v2, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v2, v2, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    invoke-virtual {v2, v0}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->GET_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    invoke-static {v0, v1}, Lcom/wandoujia/download2/AppDownloadTask2;->a(Lcom/wandoujia/download2/AppDownloadTask2;Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;)Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v0, v0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->RUNNING:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    invoke-static {}, Lcom/wandoujia/download2/AppDownloadTask2;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request apk server requestId = %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-wide v4, v3, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v1, v1, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v2, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    iget-object v1, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v1, v1, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object v0, v1, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    new-instance v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v3, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;-><init>()V

    iget-object v4, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    iget-object v4, v4, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v2

    invoke-static {}, Leny;->b()Leny;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    invoke-static {}, Lcom/wandoujia/download2/AppDownloadTask2;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request apk server exception errormsg = %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcst;->a:Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-static {v0}, Lcom/wandoujia/download2/AppDownloadTask2;->d(Lcom/wandoujia/download2/AppDownloadTask2;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
