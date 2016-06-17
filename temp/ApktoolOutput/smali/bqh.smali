.class abstract Lbqh;
.super Lbqj;
.source "AI01decoder.java"


# direct methods
.method constructor <init>(Lbnz;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbqj;-><init>(Lbnz;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 52
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 53
    iget-object v2, p0, Lbqj;->b:Lbqr;

    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v3, p2

    invoke-virtual {v2, v3, v5}, Lbqr;->a(II)I

    move-result v2

    .line 54
    div-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_0

    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_1

    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    move v3, v1

    .line 63
    :goto_1
    const/16 v0, 0xd

    if-ge v2, v0, :cond_4

    add-int v0, v2, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_3

    mul-int/lit8 v0, v0, 0x3

    :cond_3
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    rem-int/lit8 v0, v3, 0xa

    rsub-int/lit8 v0, v0, 0xa

    if-ne v0, v5, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method

.method protected final b(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 46
    const/16 v1, 0x39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0, p1, p2, v0}, Lbqh;->a(Ljava/lang/StringBuilder;II)V

    .line 49
    return-void
.end method
