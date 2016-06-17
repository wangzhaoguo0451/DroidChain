.class public final Lepj;
.super Ljava/lang/Object;
.source "AsyncHttpResponse.java"


# instance fields
.field public a:Lepv;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/wandoujia/net/HttpException;

.field public f:J

.field public g:J

.field public h:Leps;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lepv;

    invoke-direct {v0}, Lepv;-><init>()V

    iput-object v0, p0, Lepj;->a:Lepv;

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lepj;->g:J

    .line 22
    new-instance v0, Leps;

    invoke-direct {v0}, Leps;-><init>()V

    iput-object v0, p0, Lepj;->h:Leps;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 42
    const-string v0, "chunked"

    iget-object v1, p0, Lepj;->a:Lepv;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lepj;->a:Lepv;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lepv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 58
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method
