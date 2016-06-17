.class public final Lgeq;
.super Ljava/lang/Object;
.source "OldLocalVideoAlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lgeq;->a:Ljava/io/File;

    iput-object p2, p0, Lgeq;->b:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 127
    :try_start_0
    new-instance v0, Lczy;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lgeq;->a:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v2}, Lczy;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 129
    :try_start_1
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    iget-object v2, p0, Lgeq;->b:Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    const-class v3, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel$LocalVideoConfig;

    invoke-virtual {v1, v2, v3, v0}, Lcvo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lczy;)V

    .line 130
    invoke-virtual {v0}, Lczy;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 138
    :try_start_2
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 140
    :try_start_3
    invoke-virtual {v0}, Lczy;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    .line 140
    :try_start_4
    invoke-virtual {v1}, Lczy;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 142
    :catch_3
    move-exception v0

    goto :goto_0

    .line 136
    :catch_4
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    .line 140
    :try_start_5
    invoke-virtual {v1}, Lczy;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 142
    :catch_5
    move-exception v0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_1

    .line 140
    :try_start_6
    invoke-virtual {v1}, Lczy;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 142
    :cond_1
    :goto_5
    throw v0

    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_5

    .line 138
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 136
    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_3

    .line 134
    :catch_9
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 132
    :catch_a
    move-exception v1

    goto :goto_1
.end method
