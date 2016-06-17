.class final Lbzx;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:J

.field private synthetic c:Lbzv;


# direct methods
.method varargs constructor <init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lbzx;->c:Lbzv;

    iput p4, p0, Lbzx;->a:I

    iput-wide p5, p0, Lbzx;->b:J

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lbzx;->c:Lbzv;

    iget-object v0, v0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget v1, p0, Lbzx;->a:I

    iget-wide v2, p0, Lbzx;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
