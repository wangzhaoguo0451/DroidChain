.class final Lcsv;
.super Landroid/os/AsyncTask;
.source "CommonDownloadTask2.java"


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
.field private synthetic a:Lcsu;


# direct methods
.method constructor <init>(Lcsu;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcsv;->a:Lcsu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcsv;->a:Lcsu;

    iget-object v0, v0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    invoke-static {v1}, Lcom/wandoujia/base/utils/MD5Utils;->md5Digest(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Lcsu;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5 check source md5 = %s, target md5 = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcsv;->a:Lcsu;

    iget-object v6, v6, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v6, v6, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v6, v6, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lcsv;->a:Lcsu;

    iget-object v2, v2, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 160
    :goto_0
    return-object v0

    .line 144
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcsv;->a:Lcsu;

    iget-object v2, v2, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "md5 check source md5 = %s, target md5 = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcsv;->a:Lcsu;

    iget-object v7, v7, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v7, v7, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v7, v7, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

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

    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 159
    :cond_1
    :goto_1
    iget-object v0, p0, Lcsv;->a:Lcsu;

    iget-object v0, v0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 160
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 148
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcsv;->a:Lcsu;

    iget-object v2, v2, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iput-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 150
    if-eqz v1, :cond_1

    .line 152
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 152
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 154
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

    .line 150
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 147
    :catch_5
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcsv;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcsv;->a:Lcsu;

    iget-object v0, v0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    const/16 v1, 0x64

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcsv;->a:Lcsu;

    iget-object v0, v0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->SUCCEED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcsv;->a:Lcsu;

    iget-object v0, v0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    goto :goto_0
.end method
