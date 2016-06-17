.class final Lbqx;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field a:Lboa;

.field b:Lbns;

.field c:Lbns;

.field d:Lbns;

.field e:Lbns;

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method constructor <init>(Lboa;Lbns;Lbns;Lbns;Lbns;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p2, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-nez p3, :cond_1

    if-eqz p5, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    if-nez p5, :cond_4

    .line 47
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 49
    :cond_4
    invoke-direct/range {p0 .. p5}, Lbqx;->a(Lboa;Lbns;Lbns;Lbns;Lbns;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lbqx;)V
    .locals 6
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v1, p1, Lbqx;->a:Lboa;

    iget-object v2, p1, Lbqx;->b:Lbns;

    iget-object v3, p1, Lbqx;->c:Lbns;

    iget-object v4, p1, Lbqx;->d:Lbns;

    iget-object v5, p1, Lbqx;->e:Lbns;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbqx;->a(Lboa;Lbns;Lbns;Lbns;Lbns;)V

    .line 54
    return-void
.end method

.method private a(Lboa;Lbns;Lbns;Lbns;Lbns;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lbqx;->a:Lboa;

    .line 62
    iput-object p2, p0, Lbqx;->b:Lbns;

    .line 63
    iput-object p3, p0, Lbqx;->c:Lbns;

    .line 64
    iput-object p4, p0, Lbqx;->d:Lbns;

    .line 65
    iput-object p5, p0, Lbqx;->e:Lbns;

    .line 66
    invoke-virtual {p0}, Lbqx;->a()V

    .line 67
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lbqx;->b:Lbns;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lbns;

    iget-object v1, p0, Lbqx;->d:Lbns;

    iget v1, v1, Lbns;->b:F

    invoke-direct {v0, v2, v1}, Lbns;-><init>(FF)V

    iput-object v0, p0, Lbqx;->b:Lbns;

    .line 122
    new-instance v0, Lbns;

    iget-object v1, p0, Lbqx;->e:Lbns;

    iget v1, v1, Lbns;->b:F

    invoke-direct {v0, v2, v1}, Lbns;-><init>(FF)V

    iput-object v0, p0, Lbqx;->c:Lbns;

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lbqx;->b:Lbns;

    iget v0, v0, Lbns;->a:F

    iget-object v1, p0, Lbqx;->c:Lbns;

    iget v1, v1, Lbns;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lbqx;->f:I

    .line 129
    iget-object v0, p0, Lbqx;->d:Lbns;

    iget v0, v0, Lbns;->a:F

    iget-object v1, p0, Lbqx;->e:Lbns;

    iget v1, v1, Lbns;->a:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lbqx;->g:I

    .line 130
    iget-object v0, p0, Lbqx;->b:Lbns;

    iget v0, v0, Lbns;->b:F

    iget-object v1, p0, Lbqx;->d:Lbns;

    iget v1, v1, Lbns;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lbqx;->h:I

    .line 131
    iget-object v0, p0, Lbqx;->c:Lbns;

    iget v0, v0, Lbns;->b:F

    iget-object v1, p0, Lbqx;->e:Lbns;

    iget v1, v1, Lbns;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lbqx;->i:I

    .line 132
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lbqx;->d:Lbns;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lbns;

    iget-object v1, p0, Lbqx;->a:Lboa;

    iget v1, v1, Lboa;->a:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lbqx;->b:Lbns;

    iget v2, v2, Lbns;->b:F

    invoke-direct {v0, v1, v2}, Lbns;-><init>(FF)V

    iput-object v0, p0, Lbqx;->d:Lbns;

    .line 125
    new-instance v0, Lbns;

    iget-object v1, p0, Lbqx;->a:Lboa;

    iget v1, v1, Lboa;->a:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lbqx;->c:Lbns;

    iget v2, v2, Lbns;->b:F

    invoke-direct {v0, v1, v2}, Lbns;-><init>(FF)V

    iput-object v0, p0, Lbqx;->e:Lbns;

    goto :goto_0
.end method
