.class final Lcag;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:Lbzr;

.field private synthetic b:Lcae;


# direct methods
.method varargs constructor <init>(Lcae;Ljava/lang/String;[Ljava/lang/Object;Lbzr;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcag;->b:Lcae;

    iput-object p4, p0, Lcag;->a:Lbzr;

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lcag;->b:Lcae;

    iget-object v0, v0, Lcae;->a:Lbzv;

    iget-object v0, v0, Lbzv;->i:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget-object v1, p0, Lcag;->a:Lbzr;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ackSettings(Lbzr;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
