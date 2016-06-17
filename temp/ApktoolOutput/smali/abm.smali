.class public final Labm;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Labm;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 52
    .line 54
    :try_start_0
    sget-object v2, Labm;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    .line 56
    :cond_0
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    :cond_2
    :goto_0
    return v0

    .line 58
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 63
    if-eqz v1, :cond_2

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_4

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 63
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 61
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 3
    .parameter

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 72
    invoke-static {p0}, Ld;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 76
    :goto_0
    if-gez v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0

    .line 79
    :cond_1
    return v0
.end method

.method public static a(Ljava/io/File;)I
    .locals 2
    .parameter

    .prologue
    .line 214
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    mul-int/2addr v0, v1

    .line 217
    div-int/lit8 v0, v0, 0x32

    .line 219
    const/high16 v1, 0x320

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 83
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    packed-switch v0, :pswitch_data_0

    .line 93
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 87
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 89
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 91
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Loader;
    .locals 1
    .parameter

    .prologue
    .line 198
    :try_start_0
    const-string v0, "com.alipay.squareup.okhttp.OkHttpClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 199
    invoke-static {p0}, Ld;->c(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Loader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Labl;

    invoke-direct {v0, p0}, Labl;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static a(Landroid/net/Uri;ILjava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/squareup/picasso/Transformation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 119
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    if-eqz p2, :cond_1

    .line 152
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 153
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/squareup/picasso/Transformation;

    invoke-interface {v0}, Lcom/alipay/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v1, v0

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alipay/squareup/picasso/Request;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/squareup/picasso/Request;->b:Landroid/net/Uri;

    iget v1, p0, Lcom/alipay/squareup/picasso/Request;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labm;->a(Landroid/net/Uri;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Labd;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 162
    iget v1, p0, Labd;->outHeight:I

    .line 163
    iget v2, p0, Labd;->outWidth:I

    .line 164
    const/4 v0, 0x1

    .line 167
    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    .line 168
    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 169
    int-to-float v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 170
    if-ge v0, v1, :cond_2

    .line 173
    :cond_1
    :goto_0
    iput v0, p0, Labd;->inSampleSize:I

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Labd;->inJustDecodeBounds:Z

    .line 175
    return-void

    :cond_2
    move v0, v1

    .line 170
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "picasso-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 240
    :cond_0
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Ld;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    if-nez p0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const-string v2, " "

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v3, "CACHE"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    array-length v3, v2

    if-eq v3, v1, :cond_0

    .line 190
    :try_start_0
    const-string v3, "CONDITIONAL_CACHE"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x10

    .line 223
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 225
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 226
    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_1

    .line 227
    invoke-static {v0}, Ld;->a(Landroid/app/ActivityManager;)I

    move-result v0

    .line 230
    :goto_1
    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x7

    .line 232
    const/high16 v1, 0x140

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 224
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
