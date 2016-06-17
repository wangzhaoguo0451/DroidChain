.class public final Lbtu;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lbtq;

.field private final c:Lorg/apache/http/Header;

.field private d:J

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbtu;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/org/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0}, Lbtu;-><init>(Lcom/org/apache/http/entity/mime/HttpMultipartMode;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/org/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lbtu;->a()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lcom/org/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

    .line 80
    :cond_0
    new-instance v1, Lbtq;

    invoke-direct {v1, v0, p1}, Lbtq;-><init>(Ljava/lang/String;Lcom/org/apache/http/entity/mime/HttpMultipartMode;)V

    iput-object v1, p0, Lbtu;->b:Lbtq;

    .line 81
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lbtu;->c:Lorg/apache/http/Header;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtu;->e:Z

    .line 85
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 120
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    .line 121
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 122
    sget-object v4, Lbtu;->a:[C

    sget-object v5, Lbtu;->a:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbtv;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Lbto;

    invoke-direct {v0, p1, p2}, Lbto;-><init>(Ljava/lang/String;Lbtv;)V

    iget-object v1, p0, Lbtu;->b:Lbtq;

    iget-object v1, v1, Lbtq;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtu;->e:Z

    .line 134
    return-void
.end method

.method public final consumeContent()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lbtu;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lbtu;->e:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lbtu;->b:Lbtq;

    invoke-virtual {v0}, Lbtq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbtu;->d:J

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtu;->e:Z

    .line 159
    :cond_0
    iget-wide v0, p0, Lbtu;->d:J

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lbtu;->c:Lorg/apache/http/Header;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lbtu;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRepeatable()Z
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lbtu;->b:Lbtq;

    iget-object v0, v0, Lbtq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbto;

    .line 138
    iget-object v0, v0, Lbto;->b:Lbtv;

    .line 139
    invoke-virtual {v0}, Lbtv;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lbtu;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lbtu;->b:Lbtq;

    iget-object v1, v0, Lbtq;->b:Lcom/org/apache/http/entity/mime/HttpMultipartMode;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lbtq;->a(Lcom/org/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 185
    return-void
.end method
