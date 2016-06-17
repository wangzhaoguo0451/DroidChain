.class public final Lbqa;
.super Lbqf;
.source "AI013103decoder.java"


# direct methods
.method public constructor <init>(Lbnz;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lbqf;-><init>(Lbnz;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 0
    .parameter

    .prologue
    .line 47
    return p1
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "(3103)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    return-void
.end method
