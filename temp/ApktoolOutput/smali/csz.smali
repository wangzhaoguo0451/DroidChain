.class public final Lcsz;
.super Ljava/lang/Object;
.source "SpeedHelper.java"


# instance fields
.field public a:[J

.field public b:I

.field public c:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcsz;->a:[J

    .line 19
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 11
    .parameter

    .prologue
    const-wide/16 v8, 0x2

    .line 22
    iget v0, p0, Lcsz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcsz;->b:I

    rem-int/lit8 v0, v0, 0x5

    .line 23
    iget-object v1, p0, Lcsz;->a:[J

    aput-wide p1, v1, v0

    .line 24
    const-wide/16 v0, 0x0

    .line 25
    iget-object v3, p0, Lcsz;->a:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v6, v3, v2

    .line 26
    add-long/2addr v0, v6

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iget v2, p0, Lcsz;->b:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-long/2addr v0, v8

    iget v2, p0, Lcsz;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcsz;->c:J

    .line 31
    iget-wide v0, p0, Lcsz;->c:J

    return-wide v0

    .line 28
    :cond_1
    mul-long/2addr v0, v8

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    goto :goto_1
.end method
