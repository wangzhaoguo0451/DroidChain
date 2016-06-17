.class public Lcom/wandoujia/base/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final EOF:I = -0x1

.field private static final SKIP_BUFFER_SIZE:I = 0x800

.field private static SKIP_BYTE_BUFFER:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 493
    if-eqz p0, :cond_0

    .line 495
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 89
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 90
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/io/InputStreamReader;

    if-nez p2, :cond_0

    const-string p2, "utf-8"

    :cond_0
    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 279
    const/16 v1, 0x2000

    new-array v1, v1, [C

    .line 280
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 282
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->getBytes([C)[B

    move-result-object v2

    .line 283
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/io/InputStreamReader;

    if-nez p2, :cond_0

    const-string p2, "utf-8"

    :cond_0
    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 268
    const/16 v1, 0x2000

    new-array v1, v1, [C

    .line 269
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 271
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 273
    :cond_1
    return-void
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 110
    const/16 v0, 0x2000

    new-array v2, v0, [B

    .line 111
    const-wide/16 v0, 0x0

    .line 113
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 114
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 117
    :cond_0
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    const/16 v0, 0x2000

    new-array v6, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/wandoujia/base/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 167
    invoke-static {p0, p2, p3}, Lcom/wandoujia/base/utils/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    .line 169
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 170
    const-wide/16 v0, 0x0

    .line 187
    :goto_0
    return-wide v0

    .line 172
    :cond_1
    array-length v1, p6

    .line 174
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_4

    int-to-long v2, v1

    cmp-long v0, p4, v2

    if-gez v0, :cond_4

    .line 175
    long-to-int v0, p4

    .line 178
    :goto_1
    const-wide/16 v2, 0x0

    .line 179
    :cond_2
    :goto_2
    if-lez v0, :cond_3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p6, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 180
    const/4 v4, 0x0

    invoke-virtual {p1, p6, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    int-to-long v4, v5

    add-long/2addr v2, v4

    .line 182
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_2

    .line 184
    sub-long v4, p4, v2

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    goto :goto_2

    :cond_3
    move-wide v0, v2

    .line 187
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static getBytes([C)[B
    .locals 2
    .parameter

    .prologue
    .line 288
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 289
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 290
    invoke-virtual {v1, p0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 291
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 292
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static readBytes(Ljava/io/File;)[B
    .locals 4
    .parameter

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 331
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 333
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .parameter

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 353
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    .line 356
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 362
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 359
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 361
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 362
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    .line 361
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static readString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 304
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/IOUtils;->readString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 315
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/wandoujia/base/utils/IOUtils;->readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/IOUtils;->readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 61
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/wandoujia/base/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 64
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 232
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skip count must be non-negative, actual: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/IOUtils;->SKIP_BYTE_BUFFER:[B

    if-nez v0, :cond_1

    .line 244
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/wandoujia/base/utils/IOUtils;->SKIP_BYTE_BUFFER:[B

    :cond_1
    move-wide v0, p1

    .line 247
    :goto_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 248
    sget-object v2, Lcom/wandoujia/base/utils/IOUtils;->SKIP_BYTE_BUFFER:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x800

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    int-to-long v2, v2

    .line 249
    cmp-long v4, v2, v6

    if-ltz v4, :cond_2

    .line 250
    sub-long/2addr v0, v2

    .line 253
    goto :goto_0

    .line 254
    :cond_2
    sub-long v0, p1, v0

    return-wide v0
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bytes to skip must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/wandoujia/base/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 210
    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 211
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bytes to skip: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_1
    return-void
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 445
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    .line 448
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 449
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 454
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 451
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 454
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 455
    return-void

    .line 453
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 404
    invoke-static {p0, v0, p1, v0}, Lcom/wandoujia/base/utils/IOUtils;->write(Ljava/io/InputStream;ZLjava/io/OutputStream;Z)V

    .line 405
    return-void
.end method

.method public static write(Ljava/io/InputStream;ZLjava/io/OutputStream;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    .line 421
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 422
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 427
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 429
    :cond_0
    if-eqz p3, :cond_1

    .line 430
    invoke-static {p2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    :cond_1
    throw v0

    .line 424
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    if-eqz p1, :cond_3

    .line 427
    invoke-static {p0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 429
    :cond_3
    if-eqz p3, :cond_4

    .line 430
    invoke-static {p2}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 433
    :cond_4
    return-void
.end method

.method public static write([BLjava/io/File;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/wandoujia/base/utils/IOUtils;->write([BLjava/io/File;Z)V

    .line 467
    return-void
.end method

.method public static write([BLjava/io/File;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    const/4 v2, 0x0

    .line 479
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 481
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 483
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static writeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 374
    const-string v0, "utf-8"

    invoke-static {p0, p1, v0}, Lcom/wandoujia/base/utils/IOUtils;->writeString(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static writeString(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 388
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 390
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {p1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method
