.class public final Lbnn;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field public final a:Lbnm;

.field private b:Lboa;


# direct methods
.method public constructor <init>(Lbnm;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbnn;->a:Lbnm;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lboa;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbnn;->b:Lboa;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lbnn;->a:Lbnm;

    invoke-virtual {v0}, Lbnm;->a()Lboa;

    move-result-object v0

    iput-object v0, p0, Lbnn;->b:Lboa;

    .line 87
    :cond_0
    iget-object v0, p0, Lbnn;->b:Lboa;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lbnn;->a()Lboa;

    move-result-object v0

    invoke-virtual {v0}, Lboa;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
