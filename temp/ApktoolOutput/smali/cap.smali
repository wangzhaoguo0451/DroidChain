.class public final Lcap;
.super Ljava/lang/Object;
.source "EnumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/wire/ProtoEnum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:[I

.field private final d:[Lcom/squareup/wire/ProtoEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcaq;

    invoke-direct {v0}, Lcaq;-><init>()V

    sput-object v0, Lcap;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcap;->b:Ljava/lang/Class;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/ProtoEnum;

    iput-object v0, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    .line 39
    iget-object v0, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    sget-object v2, Lcap;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 41
    iget-object v0, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    array-length v2, v0

    .line 42
    iget-object v0, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    add-int/lit8 v3, v2, -0x1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 44
    iput-boolean v4, p0, Lcap;->e:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcap;->c:[I

    .line 53
    :cond_0
    return-void

    .line 47
    :cond_1
    iput-boolean v1, p0, Lcap;->e:Z

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lcap;->c:[I

    move v0, v1

    .line 49
    :goto_0
    if-ge v0, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcap;->c:[I

    iget-object v3, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v3

    aput v3, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/squareup/wire/ProtoEnum;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 56
    invoke-interface {p0}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/squareup/wire/ProtoEnum;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 60
    iget-boolean v0, p0, Lcap;->e:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 62
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcap;->d:[Lcom/squareup/wire/ProtoEnum;

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcap;->c:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcap;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
