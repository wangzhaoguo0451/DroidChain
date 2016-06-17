.class public final Legh;
.super Ljava/lang/Object;
.source "LauncherGrid.java"


# instance fields
.field public a:I

.field public b:I

.field c:[[I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Legg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Legh;->d:Ljava/util/List;

    .line 25
    invoke-direct {p0}, Legh;->b()V

    .line 27
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 30
    iput v5, p0, Legh;->a:I

    .line 31
    iput v5, p0, Legh;->b:I

    .line 32
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Legh;->c:[[I

    move v2, v1

    .line 33
    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    .line 34
    :goto_1
    if-ge v0, v5, :cond_0

    .line 35
    iget-object v3, p0, Legh;->c:[[I

    aget-object v3, v3, v2

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 38
    :cond_1
    :goto_2
    iget-object v0, p0, Legh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 39
    iget-object v0, p0, Legh;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legg;

    .line 40
    const/4 v2, 0x0

    iput-object v2, v0, Legg;->d:Landroid/graphics/Point;

    .line 41
    invoke-virtual {v0}, Legg;->c()V

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Legh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Legg;
    .locals 1
    .parameter

    .prologue
    .line 110
    if-ltz p1, :cond_0

    iget-object v0, p0, Legh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Legh;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legg;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Legg;Landroid/graphics/Point;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v2, p1, Legg;->e:Lehw;

    .line 70
    iget v0, p2, Landroid/graphics/Point;->y:I

    :goto_0
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v3, v2, Lehw;->b:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    .line 71
    iget v1, p2, Landroid/graphics/Point;->x:I

    :goto_1
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, v2, Lehw;->a:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 72
    iget-object v3, p0, Legh;->c:[[I

    aget-object v3, v3, v0

    iget v4, p1, Legg;->c:I

    aput v4, v3, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
