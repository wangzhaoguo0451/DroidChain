.class final Lbzy;
.super Lbxs;
.source "SpdyConnection.java"


# instance fields
.field private synthetic a:Z

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lbzv;


# direct methods
.method varargs constructor <init>(Lbzv;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lbzy;->d:Lbzv;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzy;->a:Z

    iput p4, p0, Lbzy;->b:I

    iput p5, p0, Lbzy;->c:I

    invoke-direct {p0, p2, p3}, Lbxs;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lbzy;->d:Lbzv;

    iget-boolean v1, p0, Lbzy;->a:Z

    iget v2, p0, Lbzy;->b:I

    iget v3, p0, Lbzy;->c:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lbzv;->a(Lbzv;ZIILaf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
