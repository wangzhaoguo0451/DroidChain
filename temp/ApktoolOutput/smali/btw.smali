.class public final Lbtw;
.super Lbtv;
.source "FileBody.java"


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lbtv;-><init>(Ljava/lang/String;)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lbtw;->b:Ljava/io/File;

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtw;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lbtw;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;C)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbtw;-><init>(Ljava/io/File;Ljava/lang/String;B)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lbtw;->b:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 93
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 94
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 96
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 99
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "binary"

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lbtw;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbtw;->c:Ljava/lang/String;

    return-object v0
.end method
