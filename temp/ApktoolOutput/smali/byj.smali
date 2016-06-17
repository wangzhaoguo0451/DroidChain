.class final Lbyj;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lhtg;


# instance fields
.field private a:Z

.field private b:J

.field private synthetic c:Lbyf;


# direct methods
.method private constructor <init>(Lbyf;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lbyj;->c:Lbyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-wide p2, p0, Lbyj;->b:J

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Lbyf;JB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Lbyj;-><init>(Lbyf;J)V

    return-void
.end method


# virtual methods
.method public final a()Lhti;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lbyj;->c:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->a()Lhti;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Lhsp;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Lbyj;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-wide v0, p1, Lhsp;->b:J

    invoke-static {v0, v1, p2, p3}, Lbya;->a(JJ)V

    .line 276
    iget-wide v0, p0, Lbyj;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 277
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lbyj;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    iget-object v0, p0, Lbyj;->c:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0, p1, p2, p3}, Lhsr;->a_(Lhsp;J)V

    .line 281
    iget-wide v0, p0, Lbyj;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lbyj;->b:J

    .line 282
    return-void
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 290
    iget-boolean v0, p0, Lbyj;->a:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbyj;->a:Z

    .line 292
    iget-wide v0, p0, Lbyj;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lbyj;->c:Lbyf;

    const/4 v1, 0x3

    iput v1, v0, Lbyf;->e:I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lbyj;->a:Z

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lbyj;->c:Lbyf;

    iget-object v0, v0, Lbyf;->d:Lhsr;

    invoke-interface {v0}, Lhsr;->flush()V

    goto :goto_0
.end method
