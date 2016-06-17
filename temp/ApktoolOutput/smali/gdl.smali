.class final Lgdl;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ldbd;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

.field private synthetic d:Lfyz;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lgdl;->a:Ljava/io/File;

    iput-object p2, p0, Lgdl;->b:Landroid/content/Context;

    iput-object p3, p0, Lgdl;->c:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    iput-object p4, p0, Lgdl;->d:Lfyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lgdl;->a:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    iget-object v1, p0, Lgdl;->b:Landroid/content/Context;

    iget-object v2, p0, Lgdl;->c:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    iget-object v3, p0, Lgdl;->d:Lfyz;

    iget-object v4, p0, Lgdl;->a:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lgdk;->a(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 80
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 82
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 84
    :catch_2
    move-exception v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 82
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 84
    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 80
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 78
    :catch_4
    move-exception v1

    goto :goto_1
.end method
