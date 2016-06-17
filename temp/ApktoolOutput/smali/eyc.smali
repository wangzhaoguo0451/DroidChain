.class public final Leyc;
.super Landroid/os/CountDownTimer;
.source "DanceTicker.java"


# instance fields
.field public a:Leyd;

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>(JI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    const-wide/16 v0, 0x14

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 47
    iput-wide p1, p0, Leyc;->c:J

    .line 48
    iput p3, p0, Leyc;->b:I

    .line 50
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Leyc;->a:Leyd;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Leyc;->a:Leyd;

    invoke-interface {v0}, Leyd;->a()V

    .line 71
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 5
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Leyc;->c:J

    sub-long/2addr v0, p1

    long-to-float v0, v0

    iget-wide v2, p0, Leyc;->c:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 60
    iget v1, p0, Leyc;->b:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 61
    iget-object v1, p0, Leyc;->a:Leyd;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Leyc;->a:Leyd;

    invoke-interface {v1, v0}, Leyd;->a(I)V

    .line 64
    :cond_0
    return-void
.end method
