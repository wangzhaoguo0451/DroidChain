.class final Lbxm;
.super Lbxl;
.source "RequestBody.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:[B


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lbxm;->a:I

    iput-object p1, p0, Lbxm;->b:[B

    invoke-direct {p0}, Lbxl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lhsr;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lbxm;->b:[B

    invoke-interface {p1, v0, v1, v1}, Lhsr;->c([BII)Lhsr;

    .line 79
    return-void
.end method
