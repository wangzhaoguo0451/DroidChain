.class public final Leqh;
.super Ljava/lang/Object;
.source "RequestBody.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/nio/ByteBuffer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Leqh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "text/plain"

    iput-object v0, p0, Leqh;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Leqh;->c:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Leqh;->d:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Leqh;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Leqh;->c:Ljava/lang/String;

    iget-object v1, p0, Leqh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Leqh;->b:Ljava/nio/ByteBuffer;

    .line 56
    iget-object v1, p0, Leqh;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Leqh;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method
