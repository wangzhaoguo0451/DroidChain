.class public final Lbtq;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# static fields
.field private static final c:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final d:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final e:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

.field private final f:Ljava/nio/charset/Charset;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lbts;->a:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lbtq;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lbtq;->c:Lorg/apache/http/util/ByteArrayBuffer;

    .line 89
    sget-object v0, Lbts;->a:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lbtq;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    .line 90
    sget-object v0, Lbts;->a:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lbtq;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lbtq;->e:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/org/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    sget-object v0, Lbts;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lbtq;->f:Ljava/nio/charset/Charset;

    .line 121
    iput-object p1, p0, Lbtq;->g:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtq;->a:Ljava/util/List;

    .line 123
    iput-object p2, p0, Lbtq;->b:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

    .line 124
    return-void
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 52
    return-object v1
.end method

.method private static a(Lbtt;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lbtt;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lbtq;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 83
    sget-object v0, Lbtq;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 84
    iget-object v0, p0, Lbtt;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lbtq;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 85
    sget-object v0, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 86
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    sget-object v0, Lbts;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lbtq;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 69
    invoke-static {v0, p1}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 70
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p1, p0}, Lbtq;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 63
    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 64
    return-void
.end method

.method private static a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    .line 238
    .line 239
    iget-object v0, p0, Lbtq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbto;

    .line 240
    iget-object v0, v0, Lbto;->b:Lbtv;

    .line 241
    invoke-virtual {v0}, Lbtv;->c()J

    move-result-wide v0

    .line 242
    cmp-long v9, v0, v4

    if-ltz v9, :cond_0

    .line 243
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v0, v6

    .line 255
    :goto_1
    return-wide v0

    .line 247
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    :try_start_0
    iget-object v1, p0, Lbtq;->b:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lbtq;->a(Lcom/org/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 252
    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    move-wide v0, v6

    goto :goto_1
.end method

.method final a(Lcom/org/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lbtq;->f:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lbtq;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lbtq;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lbtq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbto;

    .line 178
    sget-object v1, Lbtq;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 179
    invoke-static {v2, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 180
    sget-object v1, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 182
    iget-object v1, v0, Lbto;->a:Lbtp;

    .line 184
    sget-object v4, Lbtr;->a:[I

    invoke-virtual {p1}, Lcom/org/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 202
    :cond_0
    :goto_1
    sget-object v1, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 204
    if-eqz p3, :cond_1

    .line 205
    iget-object v0, v0, Lbto;->b:Lbtv;

    invoke-virtual {v0, p2}, Lbtv;->a(Ljava/io/OutputStream;)V

    .line 207
    :cond_1
    sget-object v0, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-virtual {v1}, Lbtp;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtt;

    .line 187
    iget-object v5, v1, Lbtt;->a:Ljava/lang/String;

    invoke-static {v5, p2}, Lbtq;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v5, Lbtq;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v5, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    iget-object v1, v1, Lbtt;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Lbtq;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v1, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 193
    :pswitch_1
    iget-object v1, v0, Lbto;->a:Lbtp;

    const-string v4, "Content-Disposition"

    invoke-virtual {v1, v4}, Lbtp;->a(Ljava/lang/String;)Lbtt;

    move-result-object v1

    .line 194
    iget-object v4, p0, Lbtq;->f:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lbtq;->a(Lbtt;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 195
    iget-object v1, v0, Lbto;->b:Lbtv;

    invoke-virtual {v1}, Lbtv;->d()Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_0

    .line 197
    iget-object v1, v0, Lbto;->a:Lbtp;

    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Lbtp;->a(Ljava/lang/String;)Lbtt;

    move-result-object v1

    .line 198
    iget-object v4, p0, Lbtq;->f:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lbtq;->a(Lbtt;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 209
    :cond_2
    sget-object v0, Lbtq;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 210
    invoke-static {v2, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 211
    sget-object v0, Lbtq;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 212
    sget-object v0, Lbtq;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lbtq;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 213
    return-void

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
