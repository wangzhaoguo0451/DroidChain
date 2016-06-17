.class public final Laps;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# static fields
.field private static final b:Laps;


# instance fields
.field public final a:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lapt;

    invoke-direct {v0}, Lapt;-><init>()V

    new-instance v1, Laps;

    invoke-direct {v1, v0}, Laps;-><init>(Lapt;)V

    sput-object v1, Laps;->b:Laps;

    return-void
.end method

.method private constructor <init>(Lapt;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget v0, p1, Lapt;->a:I

    iput v0, p0, Laps;->a:I

    .line 56
    iget v0, p1, Lapt;->b:I

    iput v0, p0, Laps;->c:I

    .line 57
    return-void
.end method

.method public static a()Laps;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Laps;->b:Laps;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 86
    :cond_3
    check-cast p1, Laps;

    .line 88
    iget v2, p0, Laps;->c:I

    iget v3, p1, Laps;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Laps;->c:I

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    .line 101
    return v0
.end method
