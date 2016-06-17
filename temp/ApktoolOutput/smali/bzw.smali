.class final Lbzw;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field private synthetic c:Lbzv;


# direct methods
.method varargs constructor <init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lbzw;->c:Lbzv;

    iput p4, p0, Lbzw;->a:I

    iput-object p5, p0, Lbzw;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lbzw;->c:Lbzv;

    iget v1, p0, Lbzw;->a:I

    iget-object v2, p0, Lbzw;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lbzv;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
