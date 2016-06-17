.class public final Lbjs;
.super Lblj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblj",
        "<",
        "Lbjs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile o:[Lbjs;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[Lbjs;

.field public d:[Lbjs;

.field public e:[Lbjs;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Z

.field public j:[Lbjs;

.field public k:[I

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lblj;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lbjs;->a:I

    const-string v0, ""

    iput-object v0, p0, Lbjs;->b:Ljava/lang/String;

    invoke-static {}, Lbjs;->c()[Lbjs;

    move-result-object v0

    iput-object v0, p0, Lbjs;->c:[Lbjs;

    invoke-static {}, Lbjs;->c()[Lbjs;

    move-result-object v0

    iput-object v0, p0, Lbjs;->d:[Lbjs;

    invoke-static {}, Lbjs;->c()[Lbjs;

    move-result-object v0

    iput-object v0, p0, Lbjs;->e:[Lbjs;

    const-string v0, ""

    iput-object v0, p0, Lbjs;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbjs;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbjs;->h:J

    iput-boolean v2, p0, Lbjs;->i:Z

    invoke-static {}, Lbjs;->c()[Lbjs;

    move-result-object v0

    iput-object v0, p0, Lbjs;->j:[Lbjs;

    sget-object v0, Lblp;->a:[I

    iput-object v0, p0, Lbjs;->k:[I

    iput-boolean v2, p0, Lbjs;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lbjs;->m:Lblk;

    const/4 v0, -0x1

    iput v0, p0, Lbjs;->n:I

    return-void
.end method

.method private static c()[Lbjs;
    .locals 2

    sget-object v0, Lbjs;->o:[Lbjs;

    if-nez v0, :cond_1

    sget-object v1, Lblm;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbjs;->o:[Lbjs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lbjs;

    sput-object v0, Lbjs;->o:[Lbjs;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lbjs;->o:[Lbjs;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lbjs;

    if-eqz v1, :cond_0

    check-cast p1, Lbjs;

    iget v1, p0, Lbjs;->a:I

    iget v2, p1, Lbjs;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbjs;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lbjs;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lbjs;->c:[Lbjs;

    iget-object v2, p1, Lbjs;->c:[Lbjs;

    invoke-static {v1, v2}, Lblm;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbjs;->d:[Lbjs;

    iget-object v2, p1, Lbjs;->d:[Lbjs;

    invoke-static {v1, v2}, Lblm;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbjs;->e:[Lbjs;

    iget-object v2, p1, Lbjs;->e:[Lbjs;

    invoke-static {v1, v2}, Lblm;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbjs;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lbjs;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lbjs;->g:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lbjs;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_4
    iget-wide v2, p0, Lbjs;->h:J

    iget-wide v4, p1, Lbjs;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lbjs;->i:Z

    iget-boolean v2, p1, Lbjs;->i:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbjs;->j:[Lbjs;

    iget-object v2, p1, Lbjs;->j:[Lbjs;

    invoke-static {v1, v2}, Lblm;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbjs;->k:[I

    iget-object v2, p1, Lbjs;->k:[I

    invoke-static {v1, v2}, Lblm;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbjs;->l:Z

    iget-boolean v2, p1, Lbjs;->l:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lbjs;->a(Lblj;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lbjs;->b:Ljava/lang/String;

    iget-object v2, p1, Lbjs;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lbjs;->f:Ljava/lang/String;

    iget-object v2, p1, Lbjs;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lbjs;->g:Ljava/lang/String;

    iget-object v2, p1, Lbjs;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget v0, p0, Lbjs;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lbjs;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lbjs;->c:[Lbjs;

    invoke-static {v4}, Lblm;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lbjs;->d:[Lbjs;

    invoke-static {v4}, Lblm;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lbjs;->e:[Lbjs;

    invoke-static {v4}, Lblm;->a([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lbjs;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lbjs;->g:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lbjs;->h:J

    iget-wide v6, p0, Lbjs;->h:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lbjs;->i:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbjs;->j:[Lbjs;

    invoke-static {v1}, Lblm;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbjs;->k:[I

    invoke-static {v1}, Lblm;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lbjs;->l:Z

    if-eqz v1, :cond_4

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lbjs;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lbjs;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbjs;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lbjs;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method
