.class public final Lajz;
.super Ljava/io/FilterOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lajz;->a:J

    .line 42
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lajz;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 69
    return-void
.end method

.method public final write(I)V
    .locals 4
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lajz;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 60
    iget-wide v0, p0, Lajz;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lajz;->a:J

    .line 61
    return-void
.end method

.method public final write([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lajz;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    iget-wide v0, p0, Lajz;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lajz;->a:J

    .line 55
    return-void
.end method
