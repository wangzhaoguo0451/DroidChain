.class final Lbzo;
.super Lhsu;
.source "NameValueBlockReader.java"


# instance fields
.field private synthetic a:Lbzn;


# direct methods
.method constructor <init>(Lbzn;Lhth;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lbzo;->a:Lbzn;

    invoke-direct {p0, p2}, Lhsu;-><init>(Lhth;)V

    return-void
.end method


# virtual methods
.method public final a(Lhsp;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    iget-object v2, p0, Lbzo;->a:Lbzn;

    iget v2, v2, Lbzn;->a:I

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-wide v0

    .line 57
    :cond_1
    iget-object v2, p0, Lbzo;->a:Lbzn;

    iget v2, v2, Lbzn;->a:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lhsu;->a(Lhsp;J)J

    move-result-wide v2

    .line 58
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 59
    iget-object v0, p0, Lbzo;->a:Lbzn;

    iget-object v1, p0, Lbzo;->a:Lbzn;

    iget v1, v1, Lbzn;->a:I

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    iput v1, v0, Lbzn;->a:I

    move-wide v0, v2

    .line 60
    goto :goto_0
.end method
