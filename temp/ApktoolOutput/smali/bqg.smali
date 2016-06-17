.class public final Lbqg;
.super Lbqh;
.source "AI01AndOtherAIs.java"


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
    const/4 v3, 0x4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v1, "(01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 51
    iget-object v2, p0, Lbqj;->b:Lbqr;

    invoke-virtual {v2, v3, v3}, Lbqr;->a(II)I

    move-result v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lbqg;->a(Ljava/lang/StringBuilder;II)V

    .line 56
    iget-object v1, p0, Lbqj;->b:Lbqr;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Lbqr;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
