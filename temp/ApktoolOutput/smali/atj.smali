.class public Latj;
.super Latn;
.source "LocalContentUriFetchProducer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:Landroid/graphics/Rect;

.field private static final f:Landroid/graphics/Rect;


# instance fields
.field private final g:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    const-class v0, Latj;

    sput-object v0, Latj;->a:Ljava/lang/Class;

    .line 42
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "display_photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Latj;->b:Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Latj;->c:[Ljava/lang/String;

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Latj;->d:[Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Latj;->e:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Latj;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Larv;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Latn;-><init>(Ljava/util/concurrent/Executor;Larv;)V

    .line 65
    iput-object p3, p0, Latj;->g:Landroid/content/ContentResolver;

    .line 66
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 193
    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lapu;)Laqx;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Latj;->g:Landroid/content/ContentResolver;

    sget-object v2, Latj;->c:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-object v3

    .line 114
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 117
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    if-eqz p2, :cond_2

    .line 121
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Latj;->a(Lapu;I)Laqx;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    invoke-static {v2}, Latj;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Laqx;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    goto :goto_0

    .line 128
    :cond_2
    if-eqz v2, :cond_3

    .line 129
    :try_start_2
    invoke-static {v2}, Latj;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Latj;->a(Ljava/lang/String;I)Laqx;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lapu;I)Laqx;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    sget-object v1, Latj;->f:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Latj;->a(Lapu;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 142
    :goto_0
    if-nez v1, :cond_3

    .line 168
    :cond_0
    :goto_1
    return-object v0

    .line 141
    :cond_1
    sget-object v1, Latj;->e:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Latj;->a(Lapu;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :cond_3
    :try_start_0
    iget-object v2, p0, Latj;->g:Landroid/content/ContentResolver;

    int-to-long v4, p2

    sget-object v3, Latj;->d:[Ljava/lang/String;

    invoke-static {v2, v4, v5, v1, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 152
    if-nez v1, :cond_4

    .line 153
    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 155
    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 157
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 160
    invoke-static {v2}, Latj;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Latj;->a(Ljava/lang/String;I)Laqx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 164
    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 164
    :cond_5
    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_6

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 164
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Lapu;Landroid/graphics/Rect;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x3faaaaab

    .line 186
    iget v0, p0, Lapu;->a:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lapu;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 202
    if-eqz p0, :cond_0

    .line 204
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lauz;->a(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    sget-object v2, Latj;->a:Ljava/lang/Class;

    const-string v3, "Unable to retrieve thumbnail rotation for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v2, v1, v3, v4}, Lakf;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laqx;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 70
    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 71
    const-string v2, "com.android.contacts"

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Latj;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 73
    iget-object v0, p0, Latj;->g:Landroid/content/ContentResolver;

    invoke-static {v0, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Latj;->a(Ljava/io/InputStream;I)Laqx;

    move-result-object v0

    .line 85
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v2, v0

    .line 71
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    invoke-direct {p0, v3, v0}, Latj;->a(Landroid/net/Uri;Lapu;)Laqx;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 85
    :cond_5
    iget-object v0, p0, Latj;->g:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Latj;->a(Ljava/io/InputStream;I)Laqx;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "LocalContentUriFetchProducer"

    return-object v0
.end method
