.class public final Lcom/wandoujia/p4/community/utils/CommunityImageUtils;
.super Ljava/lang/Object;
.source "CommunityImageUtils.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a:I

    .line 47
    sput v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->b:I

    return-void
.end method

.method public static a(Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    sget-object v1, Lfnk;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils$ImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->urlTemplate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    .line 133
    :goto_1
    return-object v0

    .line 118
    :pswitch_0
    sget v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a:I

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->n()I

    move-result v0

    sput v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a:I

    .line 121
    :cond_1
    sget v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a:I

    goto :goto_0

    .line 124
    :pswitch_1
    sget v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->b:I

    if-nez v0, :cond_2

    .line 125
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->o()I

    move-result v0

    sput v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->b:I

    .line 127
    :cond_2
    sget v0, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->b:I

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->urlTemplate:Ljava/lang/String;

    const-string v2, "{width}"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{height}"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x800

    const/16 v7, 0x400

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 177
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x4b000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 178
    invoke-static {p0}, Lcom/wandoujia/base/utils/ImageUtil;->getImageSize(Ljava/lang/String;)Lcom/wandoujia/base/utils/ImageUtil$ImageSize;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/wandoujia/base/utils/ImageUtil$ImageSize;->width:I

    if-ge v2, v8, :cond_1

    iget v1, v1, Lcom/wandoujia/base/utils/ImageUtil$ImageSize;->height:I

    if-ge v1, v8, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    new-array v1, v6, [Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v7, v7, v1}, Lcom/wandoujia/base/utils/ImageUtil;->decodeBitmap(Ljava/lang/String;II[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 191
    sget-object v2, Lcom/wandoujia/p4/configs/Config$ContentDir;->COMMUNITY:Lcom/wandoujia/p4/configs/Config$ContentDir;

    invoke-static {v2}, Lcom/wandoujia/p4/configs/Config;->a(Lcom/wandoujia/p4/configs/Config$ContentDir;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :cond_2
    invoke-static {p0}, Lcom/wandoujia/base/utils/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    const-string v2, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "zipImage zippedFile "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " originPath "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 210
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v1, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 211
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    .line 222
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 213
    :goto_1
    :try_start_2
    const-string v3, "ugc"

    const-string v4, "zipImage file not found error "

    invoke-static {v3, v4, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 215
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 216
    :goto_2
    :try_start_3
    const-string v3, "ugc"

    const-string v4, "zipImage io error "

    invoke-static {v3, v4, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 218
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 219
    :goto_3
    :try_start_4
    const-string v3, "ugc"

    const-string v4, "zipImage oom error "

    invoke-static {v3, v4, v1}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 218
    :catch_3
    move-exception v1

    goto :goto_3

    .line 215
    :catch_4
    move-exception v1

    goto :goto_2

    .line 212
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x0

    move v1, v2

    .line 66
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 67
    const-string v0, "image"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const-string v1, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uploadImage result "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    const-string v4, "image/jpeg"

    const v6, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Ld;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "ugc"

    const-string v2, "doUploadImage error "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 232
    sget-object v0, Lcom/wandoujia/p4/configs/Config$ContentDir;->COMMUNITY:Lcom/wandoujia/p4/configs/Config$ContentDir;

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->a(Lcom/wandoujia/p4/configs/Config$ContentDir;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    .line 236
    const-string v0, "ugc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearZippedImage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " zippedFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->n()I

    move-result v0

    .line 144
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->o()I

    move-result v1

    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->getDpi(Landroid/view/WindowManager;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    .line 153
    :cond_2
    new-instance v0, Lfnj;

    invoke-direct {v0, v2}, Lfnj;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "icon"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/community/utils/CommunityImageUtils;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
