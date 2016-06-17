.class public final Lbqc;
.super Lbqh;
.source "AI01392xDecoder.java"


# direct methods
.method public constructor <init>(Lbnz;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lbqh;-><init>(Lbnz;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 47
    iget-object v0, p0, Lbqj;->a:Lbnz;

    iget v0, v0, Lbnz;->b:I

    if-ge v0, v3, :cond_0

    .line 48
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lbqc;->b(Ljava/lang/StringBuilder;I)V

    .line 55
    iget-object v1, p0, Lbqj;->b:Lbqr;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Lbqr;->a(II)I

    move-result v1

    .line 57
    const-string v2, "(392"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lbqj;->b:Lbqr;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbqr;->a(ILjava/lang/String;)Lbqn;

    move-result-object v1

    .line 63
    iget-object v1, v1, Lbqn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
