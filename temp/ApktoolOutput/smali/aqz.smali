.class public final Laqz;
.super Ljava/lang/Object;
.source "ImmutableQualityInfo.java"

# interfaces
.implements Lara;


# static fields
.field public static final a:Lara;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    const v0, 0x7fffffff

    invoke-static {v0, v1, v1}, Laqz;->a(IZZ)Lara;

    move-result-object v0

    sput-object v0, Laqz;->a:Lara;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Laqz;->b:I

    .line 28
    iput-boolean p2, p0, Laqz;->c:Z

    .line 29
    iput-boolean p3, p0, Laqz;->d:Z

    .line 30
    return-void
.end method

.method public static a(IZZ)Lara;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Laqz;

    invoke-direct {v0, p0, p1, p2}, Laqz;-><init>(IZZ)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Laqz;->b:I

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Laqz;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Laqz;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Laqz;

    if-nez v2, :cond_2

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Laqz;

    .line 61
    iget v2, p0, Laqz;->b:I

    iget v3, p1, Laqz;->b:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Laqz;->c:Z

    iget-boolean v3, p1, Laqz;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Laqz;->d:Z

    iget-boolean v3, p1, Laqz;->d:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    iget v2, p0, Laqz;->b:I

    iget-boolean v0, p0, Laqz;->c:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x40

    :goto_0
    xor-int/2addr v0, v2

    iget-boolean v2, p0, Laqz;->d:Z

    if-eqz v2, :cond_0

    const/high16 v1, 0x80

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
