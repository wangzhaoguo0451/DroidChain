.class public final Lbqk;
.super Lbqj;
.source "AnyAIDecoder.java"


# direct methods
.method public constructor <init>(Lbnz;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lbqj;-><init>(Lbnz;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v1, p0, Lbqj;->b:Lbqr;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lbqr;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
