.class public final Lbrg;
.super Ljava/lang/Object;
.source "ModulusGF.java"


# static fields
.field public static final a:Lbrg;


# instance fields
.field public final b:[I

.field public final c:[I

.field public final d:Lbrh;

.field public final e:Lbrh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lbrg;

    invoke-direct {v0}, Lbrg;-><init>()V

    sput-object v0, Lbrg;->a:Lbrg;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x3a1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v5, [I

    iput-object v0, p0, Lbrg;->b:[I

    .line 40
    new-array v0, v5, [I

    iput-object v0, p0, Lbrg;->c:[I

    move v0, v1

    move v2, v3

    .line 42
    :goto_0
    if-ge v0, v5, :cond_0

    .line 43
    iget-object v4, p0, Lbrg;->b:[I

    aput v2, v4, v0

    .line 44
    mul-int/lit8 v2, v2, 0x3

    rem-int/lit16 v2, v2, 0x3a1

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 46
    :goto_1
    const/16 v2, 0x3a0

    if-ge v0, v2, :cond_1

    .line 47
    iget-object v2, p0, Lbrg;->c:[I

    iget-object v4, p0, Lbrg;->b:[I

    aget v4, v4, v0

    aput v0, v2, v4

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_1
    new-instance v0, Lbrh;

    new-array v2, v3, [I

    aput v1, v2, v1

    invoke-direct {v0, p0, v2}, Lbrh;-><init>(Lbrg;[I)V

    iput-object v0, p0, Lbrg;->d:Lbrh;

    .line 51
    new-instance v0, Lbrh;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lbrh;-><init>(Lbrg;[I)V

    iput-object v0, p0, Lbrg;->e:Lbrh;

    .line 52
    return-void
.end method

.method public static b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    add-int/lit16 v0, p0, 0x3a1

    sub-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x3a1

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lbrg;->b:[I

    iget-object v1, p0, Lbrg;->c:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0x3a1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final a(II)Lbrh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    if-gez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    iget-object v0, p0, Lbrg;->d:Lbrh;

    .line 72
    :goto_0
    return-object v0

    .line 70
    :cond_1
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    .line 71
    const/4 v0, 0x0

    aput p2, v1, v0

    .line 72
    new-instance v0, Lbrh;

    invoke-direct {v0, p0, v1}, Lbrh;-><init>(Lbrg;[I)V

    goto :goto_0
.end method

.method public final c(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lbrg;->b:[I

    iget-object v1, p0, Lbrg;->c:[I

    aget v1, v1, p1

    iget-object v2, p0, Lbrg;->c:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x3a0

    aget v0, v0, v1

    goto :goto_0
.end method
