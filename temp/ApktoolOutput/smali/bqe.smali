.class public final Lbqe;
.super Lbqi;
.source "AI013x0x1xDecoder.java"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbnz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lbqi;-><init>(Lbnz;)V

    .line 47
    iput-object p3, p0, Lbqe;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lbqe;->d:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 107
    const v0, 0x186a0

    rem-int v0, p1, v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x30

    .line 53
    iget-object v0, p0, Lbqj;->a:Lbnz;

    iget v0, v0, Lbnz;->b:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 54
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lbqe;->b(Ljava/lang/StringBuilder;I)V

    .line 60
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v5, v1}, Lbqe;->b(Ljava/lang/StringBuilder;II)V

    .line 61
    iget-object v1, p0, Lbqj;->b:Lbqr;

    const/16 v2, 0x44

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Lbqr;->a(II)I

    move-result v1

    const v2, 0x9600

    if-eq v1, v2, :cond_4

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbqe;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v1, 0x20

    div-int/lit8 v1, v1, 0x20

    rem-int/lit8 v3, v1, 0xc

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v1, v1, 0xc

    div-int/lit8 v4, v1, 0xa

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v3, 0xa

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    const v0, 0x186a0

    div-int v0, p2, v0

    .line 99
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lbqe;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    return-void
.end method
